import 'dart:io';

import 'package:android_app/visit_module/data/remote_datasource/visit_list_remote_datasource.dart';
import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:android_app/visit_module/domain/repository/visit_repository.dart';
import 'package:common_components/common_components.dart';
import 'package:fpdart/src/either.dart';

class GetVisitListRepositoryImpl implements VisitRepository {
  final remoteDataSource = GetVisitListRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, VisitDomain?>> getVisitList({
    required DateTime date,
  }) async {
    final resp = await remoteProcess(remoteDataSource.getVisitList(date: date));

    return resp.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<ApiException, VisitDomain?>> updateVisit({
    required DateTime date,
    required List<Map<String, dynamic>> visitDataList,
    int? updateLocationIndex,
    File? visitPhoto,
  }) {
    throw UnimplementedError();
  }
}
