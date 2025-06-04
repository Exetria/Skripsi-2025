import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/visit_module/domain/entities/visit_domain.dart';

abstract class VisitDataRemoteDatasource {
  Future<VisitDomain> getSalesVisitList({
    required String salesId,
    required DateTime date,
  });

  Future<List<VisitDomain>> getFilteredVisitList({required DateTime startDate});
}

class VisitListRemoteDatasourceImpl implements VisitDataRemoteDatasource {
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

  @override
  Future<List<VisitDomain>> getFilteredVisitList({
    required DateTime startDate,
  }) async {
    List<VisitDomain> visitList = [];

    List<dynamic> result = await apiCallPostList(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents:runQuery',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'structuredQuery': {
          'from': [
            {'collectionId': 'visits'},
          ],
          'where': {
            'fieldFilter': {
              'field': {'fieldPath': 'visit_date'},
              'op': 'GREATER_THAN',
              'value': {'timestampValue': startDate.toUtc().toIso8601String()},
            },
          },
        },
      },
    );

    for (final doc in result) {
      final document = doc['document'];
      if (document == null) continue;

      try {
        final order = VisitDomain.fromJson(document);
        visitList.add(order);
      } catch (_) {
        continue;
      }
    }

    return visitList;
  }

  String _generateDocumentIdFromDate(String salesId, DateTime date) {
    final formattedDate =
        '${date.day.toString().padLeft(2, '0')}${date.month.toString().padLeft(2, '0')}${date.year}';

    return '$salesId-$formattedDate';
  }
}
