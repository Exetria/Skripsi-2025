import 'dart:io';

import 'package:android_app/utils/functions.dart';
import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class UpdateVisitDataRemoteDatasource {
  Future<VisitDomain> updateVisit({
    required DateTime date,
    required List<Map<String, dynamic>> visitDataList,
    int? updateLocationIndex,
    File? visitPhoto,
  });
}

class UpdateVisitDataRemoteDatasourceImpl
    implements UpdateVisitDataRemoteDatasource {
  @override
  Future<VisitDomain> updateVisit({
    required DateTime date,
    required List<Map<String, dynamic>> visitDataList,
    int? updateLocationIndex,
    File? visitPhoto,
  }) async {
    final documentId = _generateDocumentIdFromDate(date);

    // Update location if needed
    if (updateLocationIndex != null) {
      final currentPosition = await getCurrentPosition();

      final locationFields =
          visitDataList[updateLocationIndex]['mapValue']?['fields']?['location']?['mapValue']?['fields'];

      locationFields?['latitude']?['doubleValue'] = currentPosition.latitude;
      locationFields?['longitude']?['doubleValue'] = currentPosition.longitude;
      locationFields?['accuracy']?['doubleValue'] = currentPosition.accuracy;
    }

    String? visitPhotoLink;

    // Upload files if exist
    if (updateLocationIndex != null && visitPhoto != null) {
      final storePhotoresponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['BUCKET_NAME']}/o?uploadType=media&name=visit/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken}',
          'Content-Type': 'application/json',
        },
        file: visitPhoto,
      );

      // Create photo link
      final String photoFileName = storePhotoresponse['name'].replaceAll(
        '/',
        '%2F',
      );
      visitPhotoLink =
          'https://firebasestorage.googleapis.com/v0/b/${storePhotoresponse['bucket']}/o/$photoFileName?alt=media&token=${storePhotoresponse['downloadTokens']}';

      // Insert photo link
      visitDataList[updateLocationIndex]['mapValue']['fields']['visit_photo_url'] =
          {'stringValue': visitPhotoLink};
    }

    Map<String, dynamic> result = await apiCallPatch(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/visits/$documentId',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'created_by': {'stringValue': userDataHelper?.uid},
          'visit_date': {'timestampValue': date.toUtc().toIso8601String()},
          'visits': {
            'arrayValue': {'values': visitDataList},
          },
        },
      },
    );

    return VisitDomain.fromJson(result);
  }

  String _generateDocumentIdFromDate(DateTime date) {
    final formattedDate =
        '${date.day.toString().padLeft(2, '0')}${date.month.toString().padLeft(2, '0')}${date.year}';

    return '${userDataHelper?.uid}-$formattedDate';
  }
}
