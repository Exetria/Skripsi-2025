import 'dart:io';

import 'package:android_app/utils/functions.dart';
import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class UpdateVisitDataRemoteDatasource {
  Future<VisitDomain> createVisit({
    required DateTime date,
    required String customerId,
    required List<Value> previousVisitData,
  });

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
  Future<VisitDomain> createVisit({
    required DateTime date,
    required String customerId,
    required List<Value> previousVisitData,
  }) async {
    final documentId = _generateDocumentIdFromDate(date);

    // Map previous visit data
    List<Map<String, dynamic>> visitArray = _createPreviousVisitArray(
      previousVisitData: previousVisitData,
    );

    // Add new visit data
    visitArray.add({
      'mapValue': {
        'fields': {
          'customer_id': {'stringValue': customerId},
          'visit_status': {'integerValue': '1'},
          'visit_notes': {'stringValue': ''},
        },
      },
    });

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
            'arrayValue': {'values': visitArray},
          },
        },
      },
    );

    return VisitDomain.fromJson(result);
  }

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
    if (visitPhoto != null) {
      final storePhotoresponse = await uploadFileToStorage(
        url:
            'https://firebasestorage.googleapis.com/v0/b/${dotenv.env['PROJECT_ID']}.appspot.com/o?uploadType=media&name=store/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg',
        headers: {
          'Authorization': 'Bearer ${userDataHelper?.idToken}',
          'Content-Type': 'application/json',
        },
        file: visitPhoto,
      );

      final String photoFileName = storePhotoresponse['name'].replaceAll(
        '/',
        '%2F',
      );

      visitPhotoLink =
          'https://firebasestorage.googleapis.com/v0/b/${storePhotoresponse['bucket']}/o/$photoFileName?alt=media&token=${storePhotoresponse['downloadTokens']}';
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

  List<Map<String, dynamic>> _createPreviousVisitArray({
    required List<Value> previousVisitData,
  }) {
    final List<Map<String, dynamic>> visitArray = [];
    for (var visit in previousVisitData) {
      visitArray.add({
        'mapValue': {
          'fields': {
            'customer_id': {
              'stringValue':
                  visit.mapValue?.fields?.customerId?.stringValue ?? '',
            },
            'visit_status': {
              'integerValue':
                  visit.mapValue?.fields?.visitStatus?.integerValue ?? '',
            },
            'visit_notes': {
              'stringValue':
                  visit.mapValue?.fields?.visitNotes?.stringValue ?? '',
            },
            'location': {
              'mapValue': {
                'fields': {
                  'latitude': {
                    'doubleValue':
                        visit
                            .mapValue
                            ?.fields
                            ?.location
                            ?.mapValue
                            ?.fields
                            ?.latitude
                            ?.doubleValue ??
                        '0',
                  },
                  'longitude': {
                    'doubleValue':
                        visit
                            .mapValue
                            ?.fields
                            ?.location
                            ?.mapValue
                            ?.fields
                            ?.longitude
                            ?.doubleValue ??
                        '0',
                  },
                  'accuracy': {
                    'doubleValue':
                        visit
                            .mapValue
                            ?.fields
                            ?.location
                            ?.mapValue
                            ?.fields
                            ?.accuracy
                            ?.doubleValue ??
                        '0',
                  },
                },
              },
            },
          },
        },
      });
    }

    return visitArray;
  }

  String _generateDocumentIdFromDate(DateTime date) {
    final formattedDate =
        '${date.day.toString().padLeft(2, '0')}${date.month.toString().padLeft(2, '0')}${date.year}';

    return '${userDataHelper?.uid}-$formattedDate';
  }
}
