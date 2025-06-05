import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/report_module/domain/entities/attendance_domain.dart';

abstract class AttendanceListRemoteDatasource {
  Future<List<AttendanceDomain>> getAttendanceList();
}

class AttendanceListRemoteDatasourceImpl
    implements AttendanceListRemoteDatasource {
  @override
  Future<List<AttendanceDomain>> getAttendanceList() async {
    Map<String, dynamic> result = await apiCallGet(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/attendances',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
    );

    final documents = (result['documents'] as List<dynamic>? ?? []);
    return documents
        .map((e) => AttendanceDomain.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
