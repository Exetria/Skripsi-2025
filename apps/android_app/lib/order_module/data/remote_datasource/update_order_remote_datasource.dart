import 'package:android_app/order_module/domain/entities/order_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class UpdateOrderRemoteDatasource {
  Future<OrderDomain> createOrder({
    required String customerId,
    required String paymentMethod,
    required String notes,
    required List<Map<String, dynamic>> productDataList,
  });
  Future<OrderDomain> updateOrder({
    required OrderDomain oldData,
    required String notes,
    required String paymentMethod,
    required List<Map<String, dynamic>> productDataList,
  });
}

class UpdateOrderRemoteDatasourceImpl implements UpdateOrderRemoteDatasource {
  @override
  Future<OrderDomain> createOrder({
    required String customerId,
    required String paymentMethod,
    required String notes,
    required List<Map<String, dynamic>> productDataList,
  }) async {
    int totalPrice = 0;
    int subTotalPrice = 0;
    int totalDiscount = 0;

    for (var product in productDataList) {
      int productTotal =
          int.tryParse(
            product['mapValue']?['fields']?['total_price']?['integerValue'] ??
                '',
          ) ??
          0;

      int productsubTotal =
          subTotalPrice +=
              (int.tryParse(
                    product['mapValue']?['fields']?['quantity']?['integerValue'] ??
                        '',
                  ) ??
                  0) *
              (int.tryParse(
                    product['mapValue']?['fields']?['unit_price']?['integerValue'] ??
                        '',
                  ) ??
                  0);

      totalPrice += productTotal;
      subTotalPrice += productsubTotal;
      totalDiscount += (productTotal - productsubTotal) * -1;
    }

    Map<String, dynamic> result = await apiCallPost(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/orders',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'created_by': {'stringValue': userDataHelper?.uid ?? ''},
          'customer_id': {'stringValue': customerId}, // cutomerid
          'products': {
            'arrayValue': {'values': productDataList},
          },
          'notes': {
            'stringValue': notes, // notes
          },
          'subtotal_price': {
            'integerValue': subTotalPrice.toString(),
          }, // subtotal (counted here)
          'total_discount': {
            'integerValue': totalDiscount.toString(),
          }, // total disc (counted here)
          'total_price': {
            'integerValue': totalPrice.toString(),
          }, // total nett (counted here)

          'payment_method': {'stringValue': paymentMethod}, // method
          'order_status': {'stringValue': 'pending'}, // status (hardcoded)
          // 'delivery_date': {'timestampValue': '2025-05-05T18:00:00Z'}, // ommit
          // 'payment_date': {'timestampValue': '2025-05-05T18:00:00Z'},  // ommit
        },
      },
    );

    return OrderDomain.fromJson(result);
  }

  // COPY
  // created_by
  // customer_id
  // order_status

  // UPDATE
  // notes
  // payment_method

  // products

  // subtotal_price
  // total_discount
  // total_price

  // OMIT
  // delivery_date
  // payment_date
  @override
  Future<OrderDomain> updateOrder({
    required OrderDomain oldData,
    required String notes,
    required String paymentMethod,
    required List<Map<String, dynamic>> productDataList,
  }) async {
    String orderId = getIdFromName(name: oldData.name);
    String customerId = oldData.fields?.customerId?.stringValue ?? '';

    int totalPrice = 0;
    int subTotalPrice = 0;
    int totalDiscount = 0;

    for (var product in productDataList) {
      int productTotal =
          int.tryParse(
            product['mapValue']?['fields']?['total_price']?['integerValue'] ??
                '',
          ) ??
          0;

      int productsubTotal =
          subTotalPrice +=
              (int.tryParse(
                    product['mapValue']?['fields']?['quantity']?['integerValue'] ??
                        '',
                  ) ??
                  0) *
              (int.tryParse(
                    product['mapValue']?['fields']?['unit_price']?['integerValue'] ??
                        '',
                  ) ??
                  0);

      totalPrice += productTotal;
      subTotalPrice += productsubTotal;
      totalDiscount += (productTotal - productsubTotal) * -1;
    }

    Map<String, dynamic> result = await apiCallPatch(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/orders/$orderId',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'created_by': {'stringValue': userDataHelper?.uid ?? ''},
          'customer_id': {'stringValue': customerId}, // cutomerid
          'products': {
            'arrayValue': {'values': productDataList},
          },
          'notes': {
            'stringValue': notes, // notes
          },
          'subtotal_price': {
            'integerValue': subTotalPrice.toString(),
          }, // subtotal (counted here)
          'total_discount': {
            'integerValue': totalDiscount.toString(),
          }, // total disc (counted here)
          'total_price': {
            'integerValue': totalPrice.toString(),
          }, // total nett (counted here)

          'payment_method': {'stringValue': paymentMethod}, // method
          'order_status': {'stringValue': 'pending'}, // status (hardcoded)
          // 'delivery_date': {'timestampValue': '2025-05-05T18:00:00Z'}, // ommit
          // 'payment_date': {'timestampValue': '2025-05-05T18:00:00Z'},  // ommit
        },
      },
    );

    return OrderDomain.fromJson(result);
  }
}
