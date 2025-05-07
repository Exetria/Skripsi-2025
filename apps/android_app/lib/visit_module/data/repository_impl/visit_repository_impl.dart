import 'package:android_app/visit_module/data/remote_datasource/visit_remote_datasource.dart';
import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:android_app/visit_module/domain/repository/visit_repository.dart';
import 'package:common_components/common_components.dart';
import 'package:fpdart/src/either.dart';

class GetVisitDataRepositoryImpl implements VisitRepository {
  final remoteDataSource = GetVisitDataRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, VisitDomain?>> getVisitData({
    required DateTime date,
  }) async {
    final resp = await remoteProcess(remoteDataSource.getVisitData(date: date));

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
