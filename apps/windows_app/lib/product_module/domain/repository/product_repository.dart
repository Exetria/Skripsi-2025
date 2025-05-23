import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/product_module/data/repository_impl/product_list_repository_impl.dart';
import 'package:windows_app/product_module/domain/entities/product_domain.dart';

abstract class ProductRepository {
  Future<Either<ApiException, List<ProductDomain>?>> getProductList();
}

final ProductListRepositoryProvider = Provider<ProductRepository>(
  (ref) => ProductListRepositoryImpl(),
);
