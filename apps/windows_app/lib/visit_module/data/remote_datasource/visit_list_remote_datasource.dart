import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/visit_module/domain/entities/visit_domain.dart';

abstract class GetVisitDataRemoteDatasource {
  Future<VisitDomain> getSalesVisitList({
    required String salesId,
    required DateTime date,
  });
}

class GetVisitListRemoteDatasourceImpl implements GetVisitDataRemoteDatasource {
  @override
  Future<VisitDomain> getSalesVisitList({
    required String salesId,
    required DateTime date,
  }) async {
    final documentId = _generateDocumentIdFromDate(salesId, date);

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

  String _generateDocumentIdFromDate(String salesId, DateTime date) {
    final formattedDate =
        '${date.day.toString().padLeft(2, '0')}${date.month.toString().padLeft(2, '0')}${date.year}';

    return '$salesId-$formattedDate';
  }
}
