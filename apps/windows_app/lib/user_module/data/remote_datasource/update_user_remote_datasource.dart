import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';

abstract class UpdateUserRemoteDatasource {
  Future<UserDomain> addUser({
    required File? userPhoto,
    required String userName,
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required bool isAdmin,
    required bool isActive,
    required List<String> assignedCustomers,
    required List<String> assignedProducts,
  });
  Future<UserDomain> updateUser();
}

class UpdateUserRemoteDatasourceImpl implements UpdateUserRemoteDatasource {
  @override
  Future<UserDomain> addUser({
    required File? userPhoto,
    required String userName,
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required bool isAdmin,
    required bool isActive,
    required List<String> assignedCustomers,
    required List<String> assignedProducts,
  }) async {
    final assignedCustomersList = _createAssignedList(assignedCustomers);
    final assignedProductsList = _createAssignedList(assignedProducts);
    String userPhotoLink = '';
    String newUserId = '';

    // Upload product image
    if (userPhoto != null) {
      final productPhotoResponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['PROJECT_ID']}.appspot.com/o?uploadType=media&name=user/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken}',
          'Content-Type': 'application/json',
        },
        file: userPhoto,
      );
      final String productFileName = productPhotoResponse['name'].replaceAll(
        '/',
        '%2F',
      );
      userPhotoLink =
          'https://firebasestorage.googleapis.com/v0/b/${productPhotoResponse['bucket']}/o/$productFileName?alt=media&token=${productPhotoResponse['downloadTokens']}';
    }

    // Register user in FirebaseAuth
    // *if failed, automatically throws an exception in apiCallPost
    Map<String, dynamic> registerResult = await apiCallPost(
      url:
          'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=${dotenv.env['API_KEY']}',
      headers: {},
      body: {'email': email, 'password': password},
    );

    newUserId = registerResult['localId'] ?? '';

    // Upload user data to Firestore
    Map<String, dynamic> result = await apiCallPatch(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/users/$newUserId',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'user_name': {'stringValue': userName},
          'full_name': {'stringValue': fullName},
          'email': {'stringValue': email},
          'phone_number': {'stringValue': phoneNumber},
          'photo_url': {'stringValue': userPhotoLink},

          'role': {'stringValue': isAdmin ? 'admin' : 'sales'},
          'is_active': {'booleanValue': isActive},

          'assigned_customers': {
            'arrayValue': {'values': assignedCustomersList},
          },

          'assigned_products': {
            'arrayValue': {'values': assignedProductsList},
          },
        },
      },
    );

    return UserDomain.fromJson(result);
  }

  @override
  Future<UserDomain> updateUser() {
    // todo: change api endpoint
    throw UnimplementedError();
  }

  List<Map<String, String>> _createAssignedList(List<String> assignedList) {
    return assignedList.map((e) => {'stringValue': e}).toList();
  }
}
