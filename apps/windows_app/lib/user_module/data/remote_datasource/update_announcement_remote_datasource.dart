import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/user_module/domain/entities/announcement_domain.dart';
import 'package:windows_app/utils/service_account.dart';

abstract class UpdateAnnouncementRemoteDatasource {
  Future<AnnouncementDomain> addAnnouncement({
    required String title,
    required String content,
    required List<String> fcmTokens,
  });
}

class UpdateAnnouncementRemoteDatasourceImpl
    implements UpdateAnnouncementRemoteDatasource {
  @override
  Future<AnnouncementDomain> addAnnouncement({
    required String title,
    required String content,
    required List<String> fcmTokens,
  }) async {
    // Upload announcement data to Firestore
    Map<String, dynamic> result = await apiCallPost(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/announcements',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'created_by': {'stringValue': userDataHelper?.uid},
          'title': {'stringValue': title},
          'content': {'stringValue': content},
        },
      },
    );
    AnnouncementDomain announcementData = AnnouncementDomain.fromJson(result);

    // Create a notification campign
    final token = await getAccessToken();

    List<Future<void>> fcmApiCalls = [];

    for (String fcmToken in fcmTokens) {
      fcmApiCalls.add(
        apiCallPost(
          url:
              'https://fcm.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/messages:send',
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
          body: {
            'message': {
              'token': fcmToken,
              'notification': {'title': title, 'body': content},
              'data': {
                'custom_payload': getIdFromName(name: announcementData.name),
              },
            },
          },
        ),
      );
    }

    await Future.wait(fcmApiCalls);

    return announcementData;
  }
}
