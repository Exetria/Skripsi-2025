import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';

abstract class CustomerListRemoteDatasource {
  Future<List<CustomerDomain>> getCustomerList();
}

class CustomerListRemoteDatasourceImpl implements CustomerListRemoteDatasource {
  @override
  Future<List<CustomerDomain>> getCustomerList() async {
    Map<String, dynamic> result = await apiCallGet(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/customers',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken ?? ""}',
        'Content-Type': 'application/json',
      },
    );

    final documents = (result['documents'] as List<dynamic>? ?? []);
    return documents
        .map((e) => CustomerDomain.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
