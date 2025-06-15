import 'package:android_app/user_management_module/domain/entities/check_user_data_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class UpdateFcmTokenRemoteDatasource {
  Future<CheckUserDataDomain> updateFcmToken({required String fcmToken});
}

class UpdateFcmTokenRemoteDatasourceImpl
    implements UpdateFcmTokenRemoteDatasource {
  @override
  Future<CheckUserDataDomain> updateFcmToken({required String fcmToken}) async {
    final assignedCustomers = _createAssignedList(
      userDataHelper?.assignedCustomers ?? [],
    );

    final assignedProducts = _createAssignedList(
      userDataHelper?.assignedProducts ?? [],
    );

    final result = await apiCallPatch(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/users/${userDataHelper?.uid}',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'user_name': {'stringValue': userDataHelper?.userName},
          'full_name': {'stringValue': userDataHelper?.fullName},
          'email': {'stringValue': userDataHelper?.email},
          'phone_number': {'stringValue': userDataHelper?.phone},
          'photo_url': {'stringValue': userDataHelper?.photoUrl},

          'role': {'stringValue': userDataHelper?.role},
          'is_active': {
            'booleanValue': true, // User must be active to reach this point
          },
          'fcm_token': {'stringValue': fcmToken},

          'assigned_customers': {
            'arrayValue': {'values': assignedCustomers},
          },
          'assigned_products': {
            'arrayValue': {'values': assignedProducts},
          },
        },
      },
    );

    return CheckUserDataDomain.fromJson(result);
  }

  List<Map<String, String>> _createAssignedList(List<String> assignedList) {
    return assignedList.map((e) => {'stringValue': e}).toList();
  }
}
