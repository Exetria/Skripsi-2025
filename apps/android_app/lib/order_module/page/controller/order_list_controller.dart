import 'package:android_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:android_app/order_module/domain/entities/order_domain.dart';
import 'package:android_app/order_module/domain/repository/order_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_list_controller.g.dart';

@Riverpod(keepAlive: true)
class OrderListController extends _$OrderListController {
  List<OrderDomain>? _orderList;

  @override
  FutureOr<List<OrderDomain>?> build() async {
    final repository = ref.watch(OrderListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getOrderList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );
    _orderList = state.value;
    return state.value;
  }

  void searchOrderByCustomer(String query) async {
    if (_orderList == null) {
      return;
    }

    while (ref.read(customerListControllerProvider) is! AsyncData) {
      await Future.delayed(const Duration(milliseconds: 50));
    }

    final filteredList =
        _orderList?.where((customer) {
          final customerName = ref
              .read(customerListControllerProvider.notifier)
              .getCustomerName(
                id: customer.fields?.customerId?.stringValue ?? '',
              );
          return customerName.toLowerCase().contains(query.toLowerCase());
        }).toList() ??
        [];

    state = AsyncData(filteredList);
  }

  void resetSearch() {
    if (_orderList == null) {
      return;
    }

    state = AsyncData(_orderList);
  }
}
