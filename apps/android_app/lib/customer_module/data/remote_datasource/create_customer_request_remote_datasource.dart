import 'dart:io';

import 'package:android_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class CreateCustomerRequestDatasource {
  Future<CustomerRequestDomain> createCustomerRequest({
    required File? storePhoto,
    required File? ktpPhoto,
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

    required String pic_name,
    required String pic_address,
    required String pic_phone_number,
    required String pic_tax_id,
    required String pic_national_id,
    required String pic_position,
    required String ownership_status,

    required String credit_period,
    required String credit_limit,

    required String note,
  });
}

class CreateCustomerRequestDatasourceImpl
    implements CreateCustomerRequestDatasource {
  @override
  Future<CustomerRequestDomain> createCustomerRequest({
    required File? storePhoto,
    required File? ktpPhoto,
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

    required String pic_name,
    required String pic_address,
    required String pic_phone_number,
    required String pic_tax_id,
    required String pic_national_id,
    required String pic_position,
    required String ownership_status,

    required String credit_period,
    required String credit_limit,

    required String note,
  }) async {
    // Get current position
    final currentPosition = await getCurrentPosition();
    String storePhotoLink = '';
    String ktpPhotoLink = '';

    // Upload files
    if (storePhoto != null) {
      final storePhotoresponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['PROJECT_ID']}.appspot.com/o?uploadType=media&name=store/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken}',
          'Content-Type': 'application/json',
        },
        file: storePhoto,
      );
      final String storeFileName = storePhotoresponse['name'].replaceAll(
        '/',
        '%2F',
      );
      storePhotoLink =
          'https://firebasestorage.googleapis.com/v0/b/${storePhotoresponse['bucket']}/o/$storeFileName?alt=media&token=${storePhotoresponse['downloadTokens']}';
    }

    if (ktpPhoto != null) {
      final ktpPhotoresponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['PROJECT_ID']}.appspot.com/o?uploadType=media&name=ktp/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken}',
          'Content-Type': 'application/json',
        },
        file: ktpPhoto,
      );
      final String ktpFileName = ktpPhotoresponse['name'].replaceAll(
        '/',
        '%2F',
      );
      ktpPhotoLink =
          'https://firebasestorage.googleapis.com/v0/b/${ktpPhotoresponse['bucket']}/o/$ktpFileName?alt=media&token=${ktpPhotoresponse['downloadTokens']}';
    }

    Map<String, dynamic> result = await apiCallPost(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/customerRequests',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
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

          'company_store_photo': {'stringValue': storePhotoLink},
          'company_name': {'stringValue': company_name},
          'company_address': {'stringValue': company_address},
          'company_phone_number': {'stringValue': company_phone_number},
          'company_tax_id': {'stringValue': company_tax_id},
          'company_email': {'stringValue': company_email},
          'company_store_condition': {'stringValue': company_store_condition},

          'pic_national_id_photo': {'stringValue': ktpPhotoLink},
          'pic_name': {'stringValue': pic_name},
          'pic_address': {'stringValue': pic_address},
          'pic_phone_number': {'stringValue': pic_phone_number},
          'pic_tax_id': {'stringValue': pic_tax_id},
          'pic_national_id': {'stringValue': pic_national_id},
          'pic_position': {'stringValue': pic_position},
          'ownership_status': {'stringValue': ownership_status},

          'credit_period': {'integerValue': credit_period},
          'credit_limit': {'integerValue': credit_limit},

          'note': {'stringValue': note},

          'requested_by': {'stringValue': userDataHelper?.uid ?? ''},
          'approval_status': {'stringValue': 'pending'},
          'approved_by': {'nullValue': null},
          'approval_date': {'nullValue': null},
          'approval_reason': {'nullValue': null},
        },
      },
    );

    return CustomerRequestDomain.fromJson(result);
  }
}
