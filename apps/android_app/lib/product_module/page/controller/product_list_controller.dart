import 'package:android_app/product_module/domain/entities/product_domain.dart';
import 'package:android_app/product_module/domain/repository/product_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_list_controller.g.dart';

@Riverpod(keepAlive: true)
class ProductListController extends _$ProductListController {
  @override
  FutureOr<List<ProductDomain>?> build() async {
    final repository = ref.watch(ProductListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getProductList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state.value;
  }

  String getProductName({required String id}) {
    if (state is! AsyncData) {
      return 'Loading...';
    }

    final productList = state.value ?? [];

    for (var product in productList) {
      final productId = product.name?.substring(60) ?? '';

      if (productId == id) {
        return product.fields?.productName?.stringValue ?? '-';
      }
    }

    return 'Name Not Found';
  }

  Future<String> getProductPrice({required String id}) async {
    while (state is! AsyncData) {
      await Future.delayed(const Duration(milliseconds: 100));
    }

    final productList = state.value ?? [];

    for (var product in productList) {
      final productId = product.name?.substring(60) ?? '';

      if (productId == id) {
        return product.fields?.price?.integerValue ?? '-';
      }
    }

    return '0';
  }
}
