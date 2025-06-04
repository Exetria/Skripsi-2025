import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:fpdart/src/either.dart';
import 'package:windows_app/visit_module/data/remote_datasource/visit_list_remote_datasource.dart';
import 'package:windows_app/visit_module/domain/entities/visit_domain.dart';
import 'package:windows_app/visit_module/domain/repository/visit_repository.dart';

class VisitListRepositoryImpl implements VisitRepository {
  final remoteDataSource = VisitListRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, VisitDomain?>> getSalesVisitList({
    required String salesId,
    required DateTime date,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.getSalesVisitList(salesId: salesId, date: date),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<ApiException, VisitDomain?>> updateSalesVisit({
    required String salesId,
    required DateTime date,
    required List<Map<String, dynamic>> visitDataList,
    int? updateLocationIndex,
    File? visitPhoto,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, List<VisitDomain>?>> getFilteredVisitList({
    required DateTime startDate,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.getFilteredVisitList(startDate: startDate),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
