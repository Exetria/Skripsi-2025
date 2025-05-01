import 'package:android_app/product_module/data/remote_datasource/product_list_remote_datasource.dart';
import 'package:android_app/product_module/domain/entities/product_domain.dart';
import 'package:android_app/product_module/domain/repository/product_repository.dart';
import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';

class ProductListRepositoryImpl implements ProductRepository {
  final remoteDataSource = ProductListRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<ProductDomain>?>> getProductList() async {
    final resp = await remoteProcess(remoteDataSource.getProductList());

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
