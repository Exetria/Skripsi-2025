import 'package:android_app/user_management_module/domain/entities/attendance_domain.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class UpdateAttendanceDataRemoteDatasource {
  Future<AttendanceDomain> checkIn();

  Future<AttendanceDomain> checkOut({
    required String checkinTime,
    required double checkinLatitude,
    required double checkinLongitude,
    required double checkinAccuracy,
  });
}

class UpdateAttendanceDataRemoteDatasourceImpl
    implements UpdateAttendanceDataRemoteDatasource {
  @override
  Future<AttendanceDomain> checkIn() async {
    final currentPosition = await getCurrentPosition();
    final documentId = generateDocumentId();

    Map<String, dynamic> result = await apiCallPatch(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/attendances/$documentId',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'created_by': {'stringValue': userDataHelper?.uid},
          'checkin_time': {
            'timestampValue': DateTime.now().toUtc().toIso8601String(),
          },
          'checkout_time': {'nullValue': null},
          'checkin_location': {
            'mapValue': {
              'fields': {
                'latitude': {'doubleValue': currentPosition.latitude},
                'longitude': {'doubleValue': currentPosition.longitude},
                'accuracy': {'doubleValue': currentPosition.accuracy},
              },
            },
          },
          'checkout_location': {
            'mapValue': {
              'fields': {
                'latitude': {'nullValue': null},
                'longitude': {'nullValue': null},
                'accuracy': {'nullValue': null},
              },
            },
          },
        },
      },
    );

    return AttendanceDomain.fromJson(result);
  }

  @override
  Future<AttendanceDomain> checkOut({
    required String checkinTime,
    required double checkinLatitude,
    required double checkinLongitude,
    required double checkinAccuracy,
  }) async {
    final currentPosition = await getCurrentPosition();
    final documentId = generateDocumentId();

    Map<String, dynamic> result = await apiCallPatch(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/attendances/$documentId',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'created_by': {'stringValue': userDataHelper?.uid},
          'checkin_time': {'timestampValue': checkinTime},
          'checkout_time': {
            'timestampValue': DateTime.now().toUtc().toIso8601String(),
          },
          'checkin_location': {
            'mapValue': {
              'fields': {
                'latitude': {'doubleValue': checkinLatitude},
                'longitude': {'doubleValue': checkinLongitude},
                'accuracy': {'doubleValue': checkinAccuracy},
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

    return AttendanceDomain.fromJson(result);
  }

  String generateDocumentId() {
    final currentTime = DateTime.now();
    final formattedDate =
        '${currentTime.day.toString().padLeft(2, '0')}${currentTime.month.toString().padLeft(2, '0')}${currentTime.year}';

    return '${userDataHelper?.uid}-$formattedDate';
  }
}
