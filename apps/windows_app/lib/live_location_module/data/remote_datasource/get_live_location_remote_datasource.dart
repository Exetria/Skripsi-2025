import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:windows_app/live_location_module/domain/entities/live_location_domain.dart';

abstract class GetLiveLocationDatasource {
  Future<LiveLocationDomain> getLiveLocation({required String userId});
}

class GetLiveLocationDatasourceImpl implements GetLiveLocationDatasource {
  @override
  Future<LiveLocationDomain> getLiveLocation({required String userId}) async {
    if (userDataHelper == null) {
      throw ApiException(statusCode: -1, message: 'User data is not available');
    }

    Map<String, dynamic> result = await apiCallGet(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/locations/$userId',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
    );
    return LiveLocationDomain.fromJson(result);
  }
}
