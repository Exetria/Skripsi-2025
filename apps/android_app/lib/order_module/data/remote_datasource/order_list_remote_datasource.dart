import 'package:android_app/order_module/domain/entities/order_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class OrderListRemoteDatasource {
  Future<List<OrderDomain>> getOrderList();
}

class OrderListRemoteDatasourceImpl implements OrderListRemoteDatasource {
  @override
  Future<List<OrderDomain>> getOrderList() async {
    Map<String, dynamic> result = await apiCallPost(
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

    final documents = (result['documents'] as List<dynamic>? ?? []);
    return documents
        .map((e) => OrderDomain.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
