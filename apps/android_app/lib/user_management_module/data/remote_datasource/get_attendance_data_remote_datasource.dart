import 'package:android_app/user_management_module/domain/entities/attendance_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class GetAttendanceDataRemoteDatasource {
  Future<AttendanceDomain> getAttendanceData();
}

class GetAttendanceDataRemoteDatasourceImpl
    implements GetAttendanceDataRemoteDatasource {
  @override
  Future<AttendanceDomain> getAttendanceData() async {
    final documentId = _generateDocumentId();

    Map<String, dynamic> result = await apiCallGet(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/attendances/$documentId',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
    );

    return AttendanceDomain.fromJson(result);
  }

  String _generateDocumentId() {
    final currentTime = DateTime.now();
    final formattedDate =
        '${currentTime.day.toString().padLeft(2, '0')}${currentTime.month.toString().padLeft(2, '0')}${currentTime.year}';

    return '${userDataHelper?.uid}-$formattedDate';
  }
}
