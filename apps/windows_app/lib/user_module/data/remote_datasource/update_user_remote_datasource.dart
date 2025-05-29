import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';
import 'package:windows_app/utils/service_account.dart';

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
  Future<UserDomain> updateUser({
    required File? userPhoto,
    required String previousUserPhotoLink,
    required String userId,
    required String userName,
    required String fullName,
    required String phoneNumber,
    required String email,
    String? newPassword,
    required bool isAdmin,
    required bool isActive,
    required List<String> assignedCustomers,
    required List<String> assignedProducts,
  });

  Future<UserDomain> deleteUser({required String uid});
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

    // Upload user photo
    if (userPhoto != null) {
      final productPhotoResponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['BUCKET_NAME']}/o?uploadType=media&name=user/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
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
  Future<UserDomain> updateUser({
    required File? userPhoto,
    required String previousUserPhotoLink,
    required String userId,
    required String userName,
    required String fullName,
    required String phoneNumber,
    required String email,
    String? newPassword,
    required bool isAdmin,
    required bool isActive,
    required List<String> assignedCustomers,
    required List<String> assignedProducts,
  }) async {
    final assignedCustomersList = _createAssignedList(assignedCustomers);
    final assignedProductsList = _createAssignedList(assignedProducts);
    String userPhotoLink = '';

    // Upload user photo
    if (userPhoto != null) {
      final productPhotoResponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['BUCKET_NAME']}/o?uploadType=media&name=user/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
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
    } else {
      userPhotoLink = previousUserPhotoLink;
    }

    // Change password in FirebaseAuth
    if (newPassword != null &&
        newPassword.isNotEmpty &&
        newPassword.length >= 6) {
      await changePasswordInFirebaseAuth(uid: userId, newPassword: newPassword);
    }

    // Upload user data to Firestore
    Map<String, dynamic> result = await apiCallPatch(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/users/$userId',
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
  Future<UserDomain> deleteUser({required String uid}) async {
    // Delete in FirebaseAuth
    deleteUserInFirebaseAuth(uid: uid);

    Map<String, dynamic> result = await apiCallDelete(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/users/$uid',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
    );
    return UserDomain.fromJson(result);
  }

  Future<void> deleteUserInFirebaseAuth({required String uid}) async {
    final token = await getAccessToken();

    await apiCallPost(
      url: 'https://identitytoolkit.googleapis.com/v1/accounts:delete',
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: {'localId': uid},
    );
  }

  Future<void> updateUserEmailInFirebaseAuth({
    required String uid,
    required String newEmail,
  }) async {
    final token = await getAccessToken();

    await apiCallPost(
      url: 'https://identitytoolkit.googleapis.com/v1/accounts:update',
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: {'localId': uid, 'email': newEmail},
    );
  }

  Future<void> changePasswordInFirebaseAuth({
    required String uid,
    required String newPassword,
  }) async {
    final token = await getAccessToken();

    await apiCallPost(
      url: 'https://identitytoolkit.googleapis.com/v1/accounts:update',
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: {'localId': uid, 'password': newPassword},
    );
  }

  List<Map<String, String>> _createAssignedList(List<String> assignedList) {
    return assignedList.map((e) => {'stringValue': e}).toList();
  }
}
