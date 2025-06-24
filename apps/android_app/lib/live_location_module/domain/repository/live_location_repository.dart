import 'package:android_app/live_location_module/data/repository_impl/update_live_location_repository_impl.dart';
import 'package:android_app/live_location_module/domain/entities/live_location_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';

abstract class LiveLocationRepository {
  Future<Either<ApiException, LiveLocationDomain>> updateLocation({
    required Position currentLocation,
  });
}

final UpdateLocationRepositoryProvider = Provider<LiveLocationRepository>(
  (ref) => UpdateLiveLocationRepositoryImpl(),
);
