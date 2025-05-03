import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/customer_module/domain/entities/customer_request_domain.dart';

abstract class CustomerRequestListRemoteDatasource {
  Future<List<CustomerRequestDomain>> getCustomerRequestList();
}

class CustomerRequestListRemoteDatasourceImpl
    implements CustomerRequestListRemoteDatasource {
  @override
  Future<List<CustomerRequestDomain>> getCustomerRequestList() async {
    Map<String, dynamic> result = await apiCallGet(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/customerRequests',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken ?? ""}',
        'Content-Type': 'application/json',
      },
    );

    final documents = (result['documents'] as List<dynamic>? ?? []);
    return documents
        .map((e) => CustomerRequestDomain.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
