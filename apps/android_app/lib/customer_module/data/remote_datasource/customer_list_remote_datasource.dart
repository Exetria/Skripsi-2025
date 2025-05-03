import 'package:android_app/customer_module/domain/entities/customer_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class CustomerListRemoteDatasource {
  Future<List<CustomerDomain>> getCustomerList();
}

class CustomerListRemoteDatasourceImpl implements CustomerListRemoteDatasource {
  @override
  Future<List<CustomerDomain>> getCustomerList() async {
    List<CustomerDomain> customerList = [];

    for (String documentId in userDataHelper?.assignedCustomers ?? []) {
      // Call API for each document
      Map<String, dynamic> result = await apiCallGet(
        url:
            'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/customers/$documentId',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken ?? ""}',
          'Content-Type': 'application/json',
        },
      );

      // Add CustomerDomain to result
      CustomerDomain instance = CustomerDomain.fromJson(result);

      // Filter if customer is blacklisted
      bool blacklisted = instance.fields?.blacklisted?.booleanValue ?? false;
      if (!(blacklisted)) {
        customerList.add(instance);
      }
    }

    return customerList;
  }
}
