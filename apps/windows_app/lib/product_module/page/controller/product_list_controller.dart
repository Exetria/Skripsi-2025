import 'package:common_components/common_components.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/product_module/domain/entities/product_domain.dart';
import 'package:windows_app/product_module/domain/repository/product_repository.dart';

part 'product_list_controller.g.dart';

@Riverpod(keepAlive: true)
class ProductListController extends _$ProductListController {
  List<ProductDomain>? _productList;

  @override
  FutureOr<List<ProductDomain>?> build() async {
    final repository = ref.watch(ProductListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getProductList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    _productList = state.value;
    return state.value;
  }

  void searchProduct(String query) {
    if (_productList == null) {
      return;
    }

    final filteredList =
        _productList?.where((customer) {
          final productName = customer.fields?.productName?.stringValue ?? '';
          return productName.toLowerCase().contains(query.toLowerCase());
        }).toList() ??
        [];

    state = AsyncData(filteredList);
  }

  String getProductName({required String id}) {
    if (state is! AsyncData) {
      return 'Memuat...';
    }

    final productList = state.value ?? [];

    for (var product in productList) {
      final productId = getIdFromName(name: product.name);

      if (productId == id) {
        return product.fields?.productName?.stringValue ?? '-';
      }
    }

    return 'Nama Tidak Ditemukan';
  }

  Future<String> getProductPrice({required String id}) async {
    while (state is! AsyncData) {
      await Future.delayed(const Duration(milliseconds: 100));
    }

    final productList = state.value ?? [];

    for (var product in productList) {
      final productId = getIdFromName(name: product.name);

      if (productId == id) {
        return product.fields?.price?.integerValue ?? '-';
      }
    }

    return '0';
  }
}
