import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/product_module/domain/entities/product_domain.dart';
import 'package:windows_app/product_module/domain/repository/product_repository.dart';

part 'update_product_controller.g.dart';

@Riverpod(keepAlive: true)
class UpdateProductController extends _$UpdateProductController {
  @override
  AsyncValue<ProductDomain?> build() {
    return const AsyncLoading();
  }

  Future<AsyncValue<ProductDomain?>> addProduct({
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
    final repository = ref.watch(UpdateProductRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.addProduct(
      productImage: productImage,
      productName: productName,
      brand: brand,
      companyCode: companyCode,
      productPrice: productPrice,
      unitPerPackage: unitPerPackage,
      description: description,
      available: available,
      attributes: attributes,
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }

  Future<AsyncValue<ProductDomain?>> updateProduct({
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
    final repository = ref.watch(UpdateProductRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.updateProduct(
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
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }
}
