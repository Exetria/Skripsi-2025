import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class GetVisitDataRemoteDatasource {
  Future<VisitDomain> getVisitList({required DateTime date});
}

class GetVisitListRemoteDatasourceImpl implements GetVisitDataRemoteDatasource {
  @override
  Future<VisitDomain> getVisitList({required DateTime date}) async {
    final documentId = _generateDocumentIdFromDate(date);

    Map<String, dynamic> result = await apiCallGet(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/visits/$documentId',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
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
