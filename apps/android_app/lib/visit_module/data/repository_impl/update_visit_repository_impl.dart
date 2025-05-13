import 'dart:io';

import 'package:android_app/visit_module/data/remote_datasource/update_visit_remote_datasource.dart';
import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:android_app/visit_module/domain/repository/visit_repository.dart';
import 'package:common_components/common_components.dart';
import 'package:fpdart/src/either.dart';

class UpdateVisitRepositoryImpl implements VisitRepository {
  final remoteDataSource = UpdateVisitDataRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, VisitDomain?>> getVisitList({
    required DateTime date,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, VisitDomain?>> updateVisit({
    required DateTime date,
    required List<Map<String, dynamic>> visitDataList,
    int? updateLocationIndex,
    File? visitPhoto,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.updateVisit(
        date: date,
        visitDataList: visitDataList,
        updateLocationIndex: updateLocationIndex,
        visitPhoto: visitPhoto,
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
