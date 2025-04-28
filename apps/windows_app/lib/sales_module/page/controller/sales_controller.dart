import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/sales_module/domain/entities/sales_domain.dart';
import 'package:windows_app/sales_module/domain/repository/sales_repository.dart';

part 'sales_controller.g.dart';

@riverpod
class SalesController extends _$SalesController {
  @override
  FutureOr<List<SalesDomain>?> build() async {
    final repository = ref.watch(SalesRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getSalesList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );
    return state.value;
  }
}
