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
}
