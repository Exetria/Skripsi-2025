import 'package:android_app/live_location_module/data/remote_datasource/update_live_location_remote_datasource.dart';
import 'package:android_app/live_location_module/domain/entities/live_location_domain.dart';
import 'package:android_app/live_location_module/domain/repository/live_location_repository.dart';
import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';

class UpdateLiveLocationRepositoryImpl implements LiveLocationRepository {
  final remoteDataSource = UpdateLiveLocationDatasourceImpl();
  @override
  Future<Either<ApiException, LiveLocationDomain>> updateLocation({
    required Position currentLocation,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.updateLiveLocation(currentLocation: currentLocation),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
