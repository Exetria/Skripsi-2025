import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/sales_module/data/remote_datasource/sales_remote_datasource.dart';
import 'package:windows_app/sales_module/domain/entities/sales_domain.dart';
import 'package:windows_app/sales_module/domain/repository/sales_repository.dart';

class SalesRepositoryImpl implements SalesRepository {
  final remoteDataSource = SalesRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<SalesDomain>?>> getSalesList() async {
    final resp = await remoteProcess(remoteDataSource.getSalesList());

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
