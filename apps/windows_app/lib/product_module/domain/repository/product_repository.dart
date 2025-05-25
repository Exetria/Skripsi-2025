import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/product_module/data/repository_impl/product_list_repository_impl.dart';
import 'package:windows_app/product_module/data/repository_impl/update_product_repository_impl.dart';
import 'package:windows_app/product_module/domain/entities/product_domain.dart';

abstract class ProductRepository {
  Future<Either<ApiException, List<ProductDomain>?>> getProductList();
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
  });
  Future<Either<ApiException, ProductDomain?>> updateProduct({
    required File? productImage,
    required String productName,
    required String brand,
    required String companyCode,
    required int productPrice,
    required int unitPerPackage,
    required String description,
    required bool available,
    required Map<String, String>? attributes,
  });
}

final ProductListRepositoryProvider = Provider<ProductRepository>(
  (ref) => ProductListRepositoryImpl(),
);

final UpdateProductRepositoryProvider = Provider<ProductRepository>(
  (ref) => UpdateProductRepositoryImpl(),
);
