import 'package:android_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class CustomerRequestListRemoteDatasource {
  Future<List<CustomerRequestDomain>> getCustomerRequestList();
}

class CustomerRequestListRemoteDatasourceImpl
    implements CustomerRequestListRemoteDatasource {
  @override
  Future<List<CustomerRequestDomain>> getCustomerRequestList() async {
    List<CustomerRequestDomain> customerRequestList = [];

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
            {'collectionId': 'customerRequests'},
          ],
          'where': {
            'fieldFilter': {
              'field': {'fieldPath': 'requested_by'},
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
        final order = CustomerRequestDomain.fromJson(document);
        customerRequestList.add(order);
      } catch (_) {
        continue;
      }
    }

    return customerRequestList;
  }
}
