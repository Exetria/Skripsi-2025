import 'package:android_app/live_location_module/domain/entities/live_location_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';

abstract class UpdateLiveLocationDatasource {
  Future<LiveLocationDomain> updateLiveLocation({
    required Position currentLocation,
  });
}

class UpdateLiveLocationDatasourceImpl implements UpdateLiveLocationDatasource {
  @override
  Future<LiveLocationDomain> updateLiveLocation({
    required Position currentLocation,
  }) async {
    if (userDataHelper == null) {
      throw ApiException(statusCode: -1, message: 'User data is not available');
    }

    Map<String, dynamic> result = await apiCallPatch(
      url:
          'https://firestore.googleapis.com/v1/projects/${dotenv.env['PROJECT_ID']}/databases/(default)/documents/locations/${userDataHelper?.uid}',
      headers: {
        'Authorization': 'Bearer ${userDataHelper?.idToken}',
        'Content-Type': 'application/json',
      },
      body: {
        'fields': {
          'latitude': {'doubleValue': currentLocation.latitude},
          'longitude': {'doubleValue': currentLocation.longitude},
          'accuracy': {'doubleValue': currentLocation.accuracy},
          'timestamp': {
            'timestampValue': currentLocation.timestamp.toIso8601String(),
          },
          'isMocked': {'booleanValue': currentLocation.isMocked},
        },
      },
    );
    return LiveLocationDomain.fromJson(result);
  }
}
