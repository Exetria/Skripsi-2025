import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/live_location_module/data/remote_datasource/get_live_location_remote_datasource.dart';
import 'package:windows_app/live_location_module/domain/entities/live_location_domain.dart';
import 'package:windows_app/live_location_module/domain/repository/live_location_repository.dart';

class GetLiveLocationRepositoryImpl implements LiveLocationRepository {
  final remoteDataSource = GetLiveLocationDatasourceImpl();

  @override
  Future<Either<ApiException, LiveLocationDomain>> getLiveLocation({
    required String userId,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.getLiveLocation(userId: userId),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
