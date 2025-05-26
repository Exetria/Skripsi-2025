import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/product_module/data/remote_datasource/update_product_remote_datasource.dart';
import 'package:windows_app/product_module/domain/entities/product_domain.dart';
import 'package:windows_app/product_module/domain/repository/product_repository.dart';

class UpdateProductRepositoryImpl implements ProductRepository {
  final remoteDataSource = UpdateProductRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<ProductDomain>?>> getProductList() async {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, ProductDomain?>> addProduct({
    required File? productImage,
    required String productName,
    required String brand,
    required String companyCode,
    required int productPrice,
    required int unitPerPackage,
    required String description,
    required bool available,
    required Map<String, String>? attributes,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.addProduct(
        productImage: productImage,
        productName: productName,
        brand: brand,
        companyCode: companyCode,
        productPrice: productPrice,
        unitPerPackage: unitPerPackage,
        description: description,
        available: available,
        attributes: attributes,
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }

  @override
  Future<Either<ApiException, ProductDomain?>> updateProduct({
    required String productId,
    required File? productImage,
    required String previousProductImageLink,
    required String productName,
    required String brand,
    required String companyCode,
    required int productPrice,
    required int unitPerPackage,
    required String description,
    required bool available,
    required Map<String, String>? attributes,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.updateProduct(
        productId: productId,
        productImage: productImage,
        previousProductImageLink: previousProductImageLink,
        productName: productName,
        brand: brand,
        companyCode: companyCode,
        productPrice: productPrice,
        unitPerPackage: unitPerPackage,
        description: description,
        available: available,
        attributes: attributes,
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}
