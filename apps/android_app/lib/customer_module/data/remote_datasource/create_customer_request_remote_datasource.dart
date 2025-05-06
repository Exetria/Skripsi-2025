// TODO: Delete ignore
// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:android_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class CreateCustomerRequestDatasource {
  Future<CustomerRequestDomain> createCustomerRequest({
    required File storePhoto,
    required File ktpPhoto,
    required String customer_type,
    required String subscription_type,

    required String request_destination,
    required String carbon_copy,

    required String company_name,
    required String company_address,
    required String company_phone_number,
    required String company_tax_id,
    required String company_email,
    required String company_store_condition,

    required String owner_name,
    required String owner_address,
    required String owner_phone_number,
    required String owner_tax_id,
    required String owner_national_id,
    required String ownership_status,

    required String note,
  });
}

class CreateCustomerRequestDatasourceImpl
    implements CreateCustomerRequestDatasource {
  @override
  Future<CustomerRequestDomain> createCustomerRequest({
    required File storePhoto,
    required File ktpPhoto,
    required String customer_type,
    required String subscription_type,

    required String request_destination,
    required String carbon_copy,

    required String company_name,
    required String company_address,
    required String company_phone_number,
    required String company_tax_id,
    required String company_email,
    required String company_store_condition,

    required String owner_name,
    required String owner_address,
    required String owner_phone_number,
    required String owner_tax_id,
    required String owner_national_id,
    required String ownership_status,

    required String note,
  }) async {
    // Get current position
    final currentPosition = await getCurrentPosition();
    String storePhotoLink = '';
    String ktpPhotoLink = '';

    // Upload files
    final storePhotoresponse = await uploadFileToStorage(
      url:
          'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['PROJECT_ID']}.appspot.com/o?uploadType=media&name=store/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      file: storePhoto,
    );

    final ktpPhotoresponse = await uploadFileToStorage(
      url:
          'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['PROJECT_ID']}.appspot.com/o?uploadType=media&name=ktp/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      file: ktpPhoto,
    );

    // Format file names, replace all '/' with '%2F'
    final String storeFileName = storePhotoresponse['name'].replaceAll(
      '/',
      '%2F',
    );
    final String ktpFileName = ktpPhotoresponse['name'].replaceAll('/', '%2F');

    // Create download links
    storePhotoLink =
        'https://firebasestorage.googleapis.com/v0/b/${storePhotoresponse['bucket']}/o/$storeFileName?alt=media&token=${storePhotoresponse['downloadTokens']}';
    ktpPhotoLink =
        'https://firebasestorage.googleapis.com/v0/b/${ktpPhotoresponse['bucket']}/o/$ktpFileName?alt=media&token=${ktpPhotoresponse['downloadTokens']}';

    Map<String, dynamic> result = await apiCallPost(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/customerRequests',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'company_store_photo': {'stringValue': storePhotoLink},
          'owner_national_id_photo': {'stringValue': ktpPhotoLink},
          'company_location': {
            'mapValue': {
              'fields': {
                'latitude': {'doubleValue': currentPosition.latitude},
                'longitude': {'doubleValue': currentPosition.longitude},
                'accuracy': {'doubleValue': currentPosition.accuracy},
              },
            },
          },

          'customer_type': {'stringValue': customer_type},
          'subscription_type': {'stringValue': subscription_type},

          'request_destination': {'stringValue': request_destination},
          'carbon_copy': {'stringValue': carbon_copy},

          'company_name': {'stringValue': company_name},
          'company_address': {'stringValue': company_address},
          'company_phone_number': {'stringValue': company_phone_number},
          'company_tax_id': {'stringValue': company_tax_id},
          'company_email': {'stringValue': company_email},
          'company_store_condition': {'stringValue': company_store_condition},

          'owner_name': {'stringValue': owner_name},
          'owner_address': {'stringValue': owner_address},
          'owner_phone_number': {'stringValue': owner_phone_number},
          'owner_tax_id': {'stringValue': owner_tax_id},
          'owner_national_id': {'stringValue': owner_national_id},
          'ownership_status': {'stringValue': ownership_status},

          'note': {'stringValue': note},

          'requested_by': {'stringValue': userDataHelper?.uid ?? ''},
          'approval_status': {'stringValue': 'pending'},
          'approved_by': {'nullValue': null},
          'approval_date': {'nullValue': null},
          'approval_reason': {'nullValue': null},
        },
      },
    );

    print('asds selesai call');
    return CustomerRequestDomain.fromJson(result);
  }
}
