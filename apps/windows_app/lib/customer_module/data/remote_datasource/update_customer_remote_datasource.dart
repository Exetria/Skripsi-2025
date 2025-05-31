import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';
import 'package:windows_app/customer_module/domain/entities/customer_request_domain.dart';

abstract class UpdateCustomerRemoteDatasource {
  Future<CustomerDomain> addCustomer({
    CustomerRequestDomain? customerRequestData,
    String approvalReason = '',

    // Company data
    required String companyName,
    required String companyAddress,
    required String companyPhoneNumber,
    required String companyEmail,
    required String companyTaxId,
    required double latitude,
    required double longitude,
    required double accuracy,
    required String companyStoreCondition,
    required File? companyStorePhoto,
    required String? companyStorePhotoUrl,
    required String subscriptionType,
    required String customerType,

    // PIC data
    required String picName,
    required String picAddress,
    required String picPhoneNumber,
    required String picNationalId,
    required File? picNationalIdPhoto,
    required String? picNationalIdPhotoUrl,
    required String picTaxId,
    required String picPosition,

    // Credit data
    required int creditLimit,
    required int creditPeriod,

    // Business metadata
    required String ownershipStatus,
    required String requestedBy,
    required String approvedBy,
    required String note,
    required bool isBlacklisted,
  });
  Future<CustomerDomain> updateCustomer({
    required String customerId,

    // Company data
    required String companyName,
    required String companyAddress,
    required String companyPhoneNumber,
    required String companyEmail,
    required String companyTaxId,
    required double latitude,
    required double longitude,
    required double accuracy,
    required String companyStoreCondition,
    required File? companyStorePhoto,
    required String? companyStorePhotoUrl,
    required String subscriptionType,
    required String customerType,

    // PIC data
    required String picName,
    required String picAddress,
    required String picPhoneNumber,
    required String picNationalId,
    required File? picNationalIdPhoto,
    required String? picNationalIdPhotoUrl,
    required String picTaxId,
    required String picPosition,

    // Credit data
    required int creditLimit,
    required int creditPeriod,

    // Business metadata
    required String ownershipStatus,
    required String requestedBy,
    required String approvedBy,
    required String note,
    required bool isBlacklisted,
  });

  Future<CustomerDomain> deleteCustomer({required String customerId});

  Future<CustomerRequestDomain> updateCustomerRequest({
    required CustomerRequestDomain? customerRequestData,
    required String? approvalReason,
    required bool approved,
  });
}

class UpdateCustomerRemoteDatasourceImpl
    implements UpdateCustomerRemoteDatasource {
  @override
  Future<CustomerDomain> addCustomer({
    CustomerRequestDomain? customerRequestData,
    String approvalReason = '',

    // Company data
    required String companyName,
    required String companyAddress,
    required String companyPhoneNumber,
    required String companyEmail,
    required String companyTaxId,
    required double latitude,
    required double longitude,
    required double accuracy,
    required String companyStoreCondition,
    required File? companyStorePhoto,
    required String? companyStorePhotoUrl,
    required String subscriptionType,
    required String customerType,

    // PIC data
    required String picName,
    required String picAddress,
    required String picPhoneNumber,
    required String picNationalId,
    required File? picNationalIdPhoto,
    required String? picNationalIdPhotoUrl,
    required String picTaxId,
    required String picPosition,

    // Credit data
    required int creditLimit,
    required int creditPeriod,

    // Business metadata
    required String ownershipStatus,
    required String requestedBy,
    required String approvedBy,
    required String note,
    required bool isBlacklisted,
  }) async {
    // Update customerRequestData
    if (customerRequestData != null) {
      try {
        await updateCustomerRequest(
          customerRequestData: customerRequestData,
          approvalReason: approvalReason,
          approved: true,
        );
      } catch (e) {
        if (e is ApiException) {
          rethrow;
        }

        throw ApiException(
          statusCode: -1,
          message: 'Gagal memperbarui data permintaan pelanggan.',
        );
      }
    }

    // Upload store photo
    if (companyStorePhoto != null) {
      final storePhotoresponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['BUCKET_NAME']}/o?uploadType=media&name=store/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken}',
          'Content-Type': 'application/json',
        },
        file: companyStorePhoto,
      );
      final String storeFileName = storePhotoresponse['name'].replaceAll(
        '/',
        '%2F',
      );
      companyStorePhotoUrl =
          'https://firebasestorage.googleapis.com/v0/b/${storePhotoresponse['bucket']}/o/$storeFileName?alt=media&token=${storePhotoresponse['downloadTokens']}';
    }

    // Upload ktp photo
    if (picNationalIdPhoto != null) {
      final ktpPhotoresponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['BUCKET_NAME']}/o?uploadType=media&name=ktp/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken}',
          'Content-Type': 'application/json',
        },
        file: picNationalIdPhoto,
      );
      final String ktpFileName = ktpPhotoresponse['name'].replaceAll(
        '/',
        '%2F',
      );
      picNationalIdPhotoUrl =
          'https://firebasestorage.googleapis.com/v0/b/${ktpPhotoresponse['bucket']}/o/$ktpFileName?alt=media&token=${ktpPhotoresponse['downloadTokens']}';
    }

    Map<String, dynamic> result = await apiCallPost(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/customers',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          // Company data
          'company_name': {'stringValue': companyName},
          'company_address': {'stringValue': companyAddress},
          'company_phone_number': {'stringValue': companyPhoneNumber},
          'company_email': {'stringValue': companyEmail},
          'company_tax_id': {'stringValue': companyTaxId},
          'company_location': {
            'mapValue': {
              'fields': {
                'latitude': {'doubleValue': latitude},
                'longitude': {'doubleValue': longitude},
                'accuracy': {'doubleValue': accuracy},
              },
            },
          },
          'company_store_condition': {'stringValue': companyStoreCondition},
          'company_store_photo': {'stringValue': companyStorePhotoUrl ?? ''},
          'subscription_type': {'stringValue': subscriptionType},
          'customer_type': {'stringValue': customerType},

          // PIC/owner data
          'pic_name': {'stringValue': picName},
          'pic_address': {'stringValue': picAddress},
          'pic_phone_number': {'stringValue': picPhoneNumber},
          'pic_national_id': {'stringValue': picNationalId},
          'pic_national_id_photo': {'stringValue': picNationalIdPhotoUrl ?? ''},
          'pic_tax_id': {'stringValue': picTaxId},
          'pic_position': {'stringValue': picPosition},
          'ownership_status': {'stringValue': ownershipStatus},

          // Credit data
          'credit_period': {'integerValue': creditPeriod},
          'credit_limit': {'integerValue': creditLimit},

          'blacklisted': {'booleanValue': false},

          'note': {'stringValue': note},

          // Other business fields
          'requested_by': {
            'stringValue':
                requestedBy.isNotEmpty
                    ? requestedBy
                    : userDataHelper?.uid ?? '',
          },
          'approved_by': {
            'stringValue': approvedBy,
          }, //Default value set in the UI
        },
      },
    );

    return CustomerDomain.fromJson(result);
  }

  @override
  Future<CustomerDomain> updateCustomer({
    required String customerId,

    // Company data
    required String companyName,
    required String companyAddress,
    required String companyPhoneNumber,
    required String companyEmail,
    required String companyTaxId,
    required double latitude,
    required double longitude,
    required double accuracy,
    required String companyStoreCondition,
    required File? companyStorePhoto,
    required String? companyStorePhotoUrl,
    required String subscriptionType,
    required String customerType,

    // PIC data
    required String picName,
    required String picAddress,
    required String picPhoneNumber,
    required String picNationalId,
    required File? picNationalIdPhoto,
    required String? picNationalIdPhotoUrl,
    required String picTaxId,
    required String picPosition,

    // Credit data
    required int creditLimit,
    required int creditPeriod,

    // Business metadata
    required String ownershipStatus,
    required String requestedBy,
    required String approvedBy,
    required String note,
    required bool isBlacklisted,
  }) async {
    // Upload store photo
    if (companyStorePhoto != null) {
      final storePhotoresponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['BUCKET_NAME']}/o?uploadType=media&name=store/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken}',
          'Content-Type': 'application/json',
        },
        file: companyStorePhoto,
      );
      final String storeFileName = storePhotoresponse['name'].replaceAll(
        '/',
        '%2F',
      );
      companyStorePhotoUrl =
          'https://firebasestorage.googleapis.com/v0/b/${storePhotoresponse['bucket']}/o/$storeFileName?alt=media&token=${storePhotoresponse['downloadTokens']}';
    }

    // Upload ktp photo
    if (picNationalIdPhoto != null) {
      final ktpPhotoresponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['BUCKET_NAME']}/o?uploadType=media&name=ktp/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken}',
          'Content-Type': 'application/json',
        },
        file: picNationalIdPhoto,
      );
      final String ktpFileName = ktpPhotoresponse['name'].replaceAll(
        '/',
        '%2F',
      );
      picNationalIdPhotoUrl =
          'https://firebasestorage.googleapis.com/v0/b/${ktpPhotoresponse['bucket']}/o/$ktpFileName?alt=media&token=${ktpPhotoresponse['downloadTokens']}';
    }

    Map<String, dynamic> result = await apiCallPatch(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/customers/$customerId',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          // Company data
          'company_name': {'stringValue': companyName},
          'company_address': {'stringValue': companyAddress},
          'company_phone_number': {'stringValue': companyPhoneNumber},
          'company_email': {'stringValue': companyEmail},
          'company_tax_id': {'stringValue': companyTaxId},
          'company_location': {
            'mapValue': {
              'fields': {
                'latitude': {'doubleValue': latitude},
                'longitude': {'doubleValue': longitude},
                'accuracy': {'doubleValue': accuracy},
              },
            },
          },
          'company_store_condition': {'stringValue': companyStoreCondition},
          'company_store_photo': {'stringValue': companyStorePhotoUrl},
          'subscription_type': {'stringValue': subscriptionType},
          'customer_type': {'stringValue': customerType},

          // PIC/owner data
          'pic_name': {'stringValue': picName},
          'pic_address': {'stringValue': picAddress},
          'pic_phone_number': {'stringValue': picPhoneNumber},
          'pic_national_id': {'stringValue': picNationalId},
          'pic_national_id_photo': {'stringValue': picNationalIdPhotoUrl},
          'pic_tax_id': {'stringValue': picTaxId},
          'pic_position': {'stringValue': picPosition},
          'ownership_status': {'stringValue': ownershipStatus},

          // Credit data
          'credit_period': {'integerValue': creditPeriod},
          'credit_limit': {'integerValue': creditLimit},

          'blacklisted': {'booleanValue': false},

          'note': {'stringValue': note},

          // Other business fields
          'requested_by': {'stringValue': requestedBy},
          'approved_by': {
            'stringValue': approvedBy,
          }, //Default value set in the UI
        },
      },
    );

    return CustomerDomain.fromJson(result);
  }

  @override
  Future<CustomerDomain> deleteCustomer({required String customerId}) async {
    Map<String, dynamic> result = await apiCallDelete(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/customers/$customerId',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
    );
    return CustomerDomain.fromJson(result);
  }

  @override
  Future<CustomerRequestDomain> updateCustomerRequest({
    required CustomerRequestDomain? customerRequestData,
    required String? approvalReason,
    required bool approved,
  }) async {
    Map<String, dynamic> result = await apiCallPatch(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/customerRequests/${getIdFromName(name: customerRequestData?.name)}',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'company_location': {
            'mapValue': {
              'fields': {
                'latitude': {
                  'doubleValue':
                      customerRequestData
                          ?.fields
                          ?.companyLocation
                          ?.mapValue
                          ?.fields
                          ?.latitude
                          ?.doubleValue ??
                      0.0,
                },
                'longitude': {
                  'doubleValue':
                      customerRequestData
                          ?.fields
                          ?.companyLocation
                          ?.mapValue
                          ?.fields
                          ?.longitude
                          ?.doubleValue ??
                      0.0,
                },
                'accuracy': {
                  'doubleValue':
                      customerRequestData
                          ?.fields
                          ?.companyLocation
                          ?.mapValue
                          ?.fields
                          ?.accuracy
                          ?.doubleValue ??
                      0.0,
                },
              },
            },
          },

          'customer_type': {
            'stringValue':
                customerRequestData?.fields?.customerType?.stringValue ?? '',
          },
          'subscription_type': {
            'stringValue':
                customerRequestData?.fields?.subscriptionType?.stringValue ??
                '',
          },

          'request_destination': {
            'stringValue':
                customerRequestData?.fields?.requestDestination?.stringValue ??
                '',
          },
          'carbon_copy': {
            'stringValue':
                customerRequestData?.fields?.carbonCopy?.stringValue ?? '',
          },

          'company_store_photo': {
            'stringValue':
                customerRequestData?.fields?.companyStorePhoto?.stringValue ??
                '',
          },
          'company_name': {
            'stringValue':
                customerRequestData?.fields?.companyName?.stringValue ?? '',
          },
          'company_address': {
            'stringValue':
                customerRequestData?.fields?.companyAddress?.stringValue ?? '',
          },
          'company_phone_number': {
            'stringValue':
                customerRequestData?.fields?.companyPhoneNumber?.stringValue ??
                '',
          },
          'company_tax_id': {
            'stringValue':
                customerRequestData?.fields?.companyTaxId?.stringValue ?? '',
          },
          'company_email': {
            'stringValue':
                customerRequestData?.fields?.companyEmail?.stringValue ?? '',
          },
          'company_store_condition': {
            'stringValue':
                customerRequestData
                    ?.fields
                    ?.companyStoreCondition
                    ?.stringValue ??
                '',
          },

          'pic_national_id_photo': {
            'stringValue':
                customerRequestData?.fields?.picNationalIdPhoto?.stringValue ??
                '',
          },
          'pic_name': {
            'stringValue':
                customerRequestData?.fields?.picName?.stringValue ?? '',
          },
          'pic_address': {
            'stringValue':
                customerRequestData?.fields?.picAddress?.stringValue ?? '',
          },
          'pic_phone_number': {
            'stringValue':
                customerRequestData?.fields?.picPhoneNumber?.stringValue ?? '',
          },
          'pic_tax_id': {
            'stringValue':
                customerRequestData?.fields?.picTaxId?.stringValue ?? '',
          },
          'pic_national_id': {
            'stringValue':
                customerRequestData?.fields?.picNationalId?.stringValue ?? '',
          },
          'pic_position': {
            'stringValue':
                customerRequestData?.fields?.picPosition?.stringValue ?? '',
          },
          'ownership_status': {
            'stringValue':
                customerRequestData?.fields?.ownershipStatus?.stringValue ?? '',
          },

          'credit_period': {
            'integerValue':
                customerRequestData?.fields?.creditPeriod?.integerValue ?? 0,
          },
          'credit_limit': {
            'integerValue':
                customerRequestData?.fields?.creditLimit?.integerValue ?? 0,
          },

          'note': {
            'stringValue': customerRequestData?.fields?.note?.stringValue ?? '',
          },

          'requested_by': {
            'stringValue':
                customerRequestData?.fields?.requestedBy?.stringValue ?? '',
          },
          'approval_status': {
            'stringValue': approved ? 'approved' : 'rejected',
          },
          'approved_by': {'stringValue': userDataHelper?.uid ?? ''},
          'approval_date': {
            'timestampValue': DateTime.now().toUtc().toIso8601String(),
          },
          'approval_reason': {'stringValue': approvalReason ?? ''},
        },
      },
    );

    return CustomerRequestDomain.fromJson(result);
  }
}
