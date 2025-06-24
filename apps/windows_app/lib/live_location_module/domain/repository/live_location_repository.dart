import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/live_location_module/data/repository_impl/get_live_location_repository_impl.dart';
import 'package:windows_app/live_location_module/domain/entities/live_location_domain.dart';

abstract class LiveLocationRepository {
  Future<Either<ApiException, LiveLocationDomain>> getLiveLocation({
    required String userId,
  });
}

final GetLocationRepositoryProvider = Provider<LiveLocationRepository>(
  (ref) => GetLiveLocationRepositoryImpl(),
);
