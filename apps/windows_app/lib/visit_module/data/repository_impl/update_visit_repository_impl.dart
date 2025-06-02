import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:fpdart/src/either.dart';
import 'package:windows_app/visit_module/data/remote_datasource/update_visit_remote_datasource.dart';
import 'package:windows_app/visit_module/domain/entities/visit_domain.dart';
import 'package:windows_app/visit_module/domain/repository/visit_repository.dart';

class UpdateVisitRepositoryImpl implements VisitRepository {
  final remoteDataSource = UpdateVisitDataRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, VisitDomain?>> getSalesVisitList({
    required String salesId,
    required DateTime date,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, VisitDomain?>> updateSalesVisit({
    required String salesId,
    required DateTime date,
    required List<Map<String, dynamic>> visitDataList,
    int? updateLocationIndex,
    File? visitPhoto,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.updateSalesVisit(
        salesId: salesId,
        date: date,
        visitDataList: visitDataList,
        updateLocationIndex: updateLocationIndex,
        visitPhoto: visitPhoto,
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
