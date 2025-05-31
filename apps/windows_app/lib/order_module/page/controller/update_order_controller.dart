import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/order_module/domain/entities/order_domain.dart';
import 'package:windows_app/order_module/domain/repository/order_repository.dart';

part 'update_order_controller.g.dart';

@riverpod
class UpdateOrderController extends _$UpdateOrderController {
  @override
  AsyncValue<OrderDomain?> build() {
    return const AsyncLoading();
  }

  Future<AsyncValue<OrderDomain?>> createOrder({
    required String customerId,
    required String paymentMethod,
    required String notes,
    required List<Map<String, dynamic>> productDataList,
  }) async {
    final repository = ref.watch(UpdateOrderRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.createOrder(
      customerId: customerId,
      paymentMethod: paymentMethod,
      notes: notes,
      productDataList: productDataList,
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }

  Future<AsyncValue<OrderDomain?>> updateOrder({
    required OrderDomain oldData,
    required String notes,
    required String paymentMethod,
    required String orderStatus,
    required String? deliveryDate,
    required String? paymentDate,
    required List<Map<String, dynamic>> productDataList,
  }) async {
    final repository = ref.watch(UpdateOrderRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.updateOrder(
      oldData: oldData,
      notes: notes,
      paymentMethod: paymentMethod,
      orderStatus: orderStatus,
      deliveryDate: deliveryDate,
      paymentDate: paymentDate,
      productDataList: productDataList,
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }
}
