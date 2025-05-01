import 'package:android_app/order_module/domain/entities/order_domain.dart';
import 'package:common_components/common_components.dart';

abstract class OrderListRemoteDatasource {
  Future<List<OrderDomain>> getOrderList();
}

class OrderListRemoteDatasourceImpl implements OrderListRemoteDatasource {
  @override
  Future<List<OrderDomain>> getOrderList() async {
    Map<String, dynamic> result = await apiCallGet(
      url:
          'https://firestore.googleapis.com/v1/projects/kost-noting/databases/(default)/documents/orders',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken ?? ""}',
        'Content-Type': 'application/json',
      },
    );

    final documents = (result['documents'] as List<dynamic>? ?? []);
    return documents
        .map((e) => OrderDomain.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
