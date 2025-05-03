import 'package:android_app/order_module/domain/entities/order_domain.dart';
import 'package:android_app/order_module/domain/repository/order_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_list_controller.g.dart';

@Riverpod(keepAlive: true)
class OrderListController extends _$OrderListController {
  @override
  FutureOr<List<OrderDomain>?> build() async {
    final repository = ref.watch(OrderListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getOrderList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );
    return state.value;
  }
}
