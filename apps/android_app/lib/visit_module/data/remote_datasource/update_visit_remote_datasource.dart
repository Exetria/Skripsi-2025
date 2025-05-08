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
    required String customerId,
    required String notes,
    required List<Value> previousVisitData,
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

    Map<String, dynamic> callBody = _createCallBody(
      visitDate: date,
      visitData: previousVisitData,
    );

    Map<String, dynamic> result = await apiCallPatch(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/visits/$documentId',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: callBody,
    );

    return VisitDomain.fromJson(result);
  }

  @override
  Future<VisitDomain> updateVisit({
    required DateTime date,
    required String customerId,
    required String notes,
    required List<Value> previousVisitData,
  }) async {
    final currentPosition = await getCurrentPosition();

    // TODO: Change with real docid
    final documentId = 'dwlajhgvdw';

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
          // 'checkin_time': {'timestampValue': checkinTime},
          'checkout_time': {
            'timestampValue': DateTime.now().toUtc().toIso8601String(),
          },
          'checkin_location': {
            'mapValue': {
              'fields': {
                // 'latitude': {'doubleValue': checkinLatitude},
                // 'longitude': {'doubleValue': checkinLongitude},
                // 'accuracy': {'doubleValue': checkinAccuracy},
              },
            },
          },
          'checkout_location': {
            'mapValue': {
              'fields': {
                'latitude': {'doubleValue': currentPosition.latitude},
                'longitude': {'doubleValue': currentPosition.longitude},
                'accuracy': {'doubleValue': currentPosition.accuracy},
              },
            },
          },
        },
      },
    );

    return VisitDomain.fromJson(result);
  }

  Map<String, dynamic> _createCallBody({
    required DateTime visitDate,
    required List<Value> visitData,
  }) {
    final List<Map<String, dynamic>> visitArray = [];
    for (var visit in visitData) {
      visitArray.add({
        'mapValue': {
          'fields': {
            'customer_id': {
              'stringValue':
                  visit.mapValue?.fields?.customerId?.stringValue ?? '',
            },
            'visit_purpose': {
              'stringValue':
                  visit.mapValue?.fields?.visitPurpose?.stringValue ?? '',
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

    return {
      'fields': {
        'created_by': {'stringValue': userDataHelper?.uid},
        'visit_date': {'timestampValue': visitDate.toUtc().toIso8601String()},
        'visits': {
          'arrayValue': {'values': visitArray},
        },
      },
    };
  }

  String _generateDocumentIdFromDate(DateTime date) {
    final formattedDate =
        '${date.day.toString().padLeft(2, '0')}${date.month.toString().padLeft(2, '0')}${date.year}';

    return '${userDataHelper?.uid}-$formattedDate';
  }
}
