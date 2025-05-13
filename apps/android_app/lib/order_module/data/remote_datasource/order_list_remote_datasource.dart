import 'package:android_app/order_module/domain/entities/order_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class OrderListRemoteDatasource {
  Future<List<OrderDomain>> getOrderList();
}

class OrderListRemoteDatasourceImpl implements OrderListRemoteDatasource {
  @override
  Future<List<OrderDomain>> getOrderList() async {
    List<OrderDomain> orderList = [];

    List<dynamic> result = await apiCallPostList(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents:runQuery',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'structuredQuery': {
          'from': [
            {'collectionId': 'orders'},
          ],
          'where': {
            'fieldFilter': {
              'field': {'fieldPath': 'created_by'},
              'op': 'EQUAL',
              'value': {'stringValue': userDataHelper?.uid ?? ''},
            },
          },
        },
      },
    );

    for (final doc in result) {
      final document = doc['document'];
      if (document == null) continue;

      try {
        final order = OrderDomain.fromJson(document);
        orderList.add(order);
      } catch (_) {
        continue;
      }
    }

    return orderList;
  }
}
