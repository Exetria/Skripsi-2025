import 'package:android_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:android_app/order_module/domain/entities/order_domain.dart';
import 'package:android_app/order_module/domain/repository/order_repository.dart';
import 'package:common_components/functions.dart';
import 'package:flutter/material.dart';
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
    sortOrderByDate();
    return state.value;
  }

  void sortOrderByDate() {
    if (_orderList == null) return;

    _orderList?.sort((a, b) {
      final dateA = DateTime.tryParse(a.createTime ?? '');
      final dateB = DateTime.tryParse(b.createTime ?? '');

      if (dateA == null && dateB == null) return 0;
      if (dateA == null) return 1;
      if (dateB == null) return -1;

      return dateB.compareTo(dateA);
    });
  }

  void filterOrderByDateRange(DateTimeRange dateRange) {
    if (_orderList == null) return;

    // Normalize start and end dates to remove time component
    final startDate = DateTime(
      dateRange.start.year,
      dateRange.start.month,
      dateRange.start.day,
    );
    final endDate = DateTime(
      dateRange.end.year,
      dateRange.end.month,
      dateRange.end.day,
    );

    final filteredList =
        _orderList?.where((order) {
          final parsed = DateTime.tryParse(order.createTime ?? '');
          if (parsed == null) return false;

          final orderDate = DateTime(parsed.year, parsed.month, parsed.day);

          return orderDate.isAtSameMomentAs(startDate) ||
              orderDate.isAtSameMomentAs(endDate) ||
              (orderDate.isAfter(startDate) && orderDate.isBefore(endDate));
        }).toList() ??
        [];

    state = AsyncData(filteredList);
  }

  void searchOrderByCustomer(String query) async {
    if (_orderList == null) {
      return;
    }

    while (ref.read(customerListControllerProvider) is! AsyncData) {
      await Future.delayed(const Duration(milliseconds: 50));
    }

    final filteredList =
        _orderList?.where((order) {
          final orderId = getIdFromName(name: order.name);
          final customerName = ref
              .read(customerListControllerProvider.notifier)
              .getCustomerName(id: order.fields?.customerId?.stringValue ?? '');
          return (customerName.toLowerCase().contains(query.toLowerCase()) ||
              orderId.toLowerCase().contains(query.toLowerCase()));
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

  List<int> getMonthlyOrderCount(DateTime month) {
    if (_orderList == null) return List<int>.filled(31, 0);

    final targetMonth = DateTime(month.year, month.month);

    final monthlyCounts = List<int>.filled(31, 0);

    for (final order in _orderList!) {
      final createDate = DateTime.tryParse(order.createTime ?? '');
      if (createDate == null) continue;

      final orderDate = DateTime(createDate.year, createDate.month);
      if (orderDate == targetMonth) {
        // Adjust index starting from 0
        final day = createDate.day - 1;
        monthlyCounts[day]++;
      }
    }

    return monthlyCounts;
  }

  List<int> getMonthlyOrderTotalPrice(DateTime month) {
    if (_orderList == null) return List<int>.filled(31, 0);

    final targetMonth = DateTime(month.year, month.month);

    final monthlyTotals = List<int>.filled(31, 0);

    for (final order in _orderList!) {
      final createDate = DateTime.tryParse(order.createTime ?? '');
      if (createDate == null) continue;

      final orderDate = DateTime(createDate.year, createDate.month);
      if (orderDate == targetMonth) {
        // Adjust index starting from 0
        final day = createDate.day - 1;
        final price =
            int.tryParse(order.fields?.totalPrice?.integerValue ?? '0') ?? 0;
        monthlyTotals[day] += price;
      }
    }

    return monthlyTotals;
  }
}
