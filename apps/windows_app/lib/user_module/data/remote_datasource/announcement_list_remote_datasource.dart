import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/user_module/domain/entities/announcement_domain.dart';

abstract class AnnouncementListRemoteDatasource {
  Future<List<AnnouncementDomain>> getAnnouncementList();
}

class AnnouncementListRemoteDatasourceImpl
    implements AnnouncementListRemoteDatasource {
  @override
  Future<List<AnnouncementDomain>> getAnnouncementList() async {
    Map<String, dynamic> result = await apiCallGet(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/announcements',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
    );

    final documents = (result['documents'] as List<dynamic>? ?? []);
    return documents
        .map((e) => AnnouncementDomain.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
