import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/order_module/domain/entities/order_domain.dart';
import 'package:windows_app/order_module/domain/repository/order_repository.dart';
import 'package:windows_app/product_module/page/controller/product_list_controller.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

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

  Future<String> exportOrderData(DateTimeRange dateRange) async {
    if (state.isLoading) {
      return 'Sedang memuat data, silahkan tunggu dan coba lagi';
    } else if (state.hasError) {
      return 'Terjadi kesalahan saat memuat data: ${state.error}';
    } else if (ref.read(userListControllerProvider).isLoading) {
      return 'Sedang memuat data pengguna, silahkan tunggu dan coba lagi';
    } else if (ref.read(customerListControllerProvider).isLoading) {
      return 'Sedang memuat data pelanggan, silahkan tunggu dan coba lagi';
    } else if (ref.read(productListControllerProvider).isLoading) {
      return 'Sedang memuat data produk, silahkan tunggu dan coba lagi';
    } else if (dateRange.start.isAfter(dateRange.end)) {
      return 'Tanggal awal tidak boleh setelah tanggal akhir';
    }

    Map<String, List<List<dynamic>>> exportData = {};

    for (DateTime date in dateRange.toDateTimeList()) {
      // Get order list by date and sort by sales ID
      List<OrderDomain> ordersInDate = sortOrderListBySalesId(
        getOrderListByDate(date),
      );

      // Insert header to sheetData
      List<List<dynamic>> sheetData = [
        [
          'ID',
          'Sales',
          'Customer',
          'Metode Pembayaran',
          'Status',
          'Catatan',
          'Subtotal',
          'Total Diskon',
          'Total Harga',
          'Tanggal Kirim',
          'Tanggal Bayar',

          'Nama Produk',
          'Jumlah',
          'Harga Satuan',
          'Diskon Rp/%',
          'Total Per Item',
        ],
      ];

      for (OrderDomain order in ordersInDate) {
        String orderId = getIdFromName(name: order.name);
        String salesName = ref
            .read(userListControllerProvider.notifier)
            .getUserName(id: order.fields?.createdBy?.stringValue ?? '-');
        String customerName = ref
            .read(customerListControllerProvider.notifier)
            .getCustomerName(id: order.fields?.customerId?.stringValue ?? '-');
        String paymentMethod = order.fields?.paymentMethod?.stringValue ?? '-';
        String orderStatus = order.fields?.orderStatus?.stringValue ?? '-';
        String orderNote = order.fields?.notes?.stringValue ?? '-';
        int subtotal =
            int.tryParse(order.fields?.subtotalPrice?.integerValue ?? '0') ?? 0;
        int totalDiscount =
            int.tryParse(order.fields?.totalDiscount?.integerValue ?? '0') ?? 0;
        int totalPrice =
            int.tryParse(order.fields?.totalPrice?.integerValue ?? '0') ?? 0;

        DateTime? deliveryTime = DateTime.tryParse(
          order.fields?.deliveryDate?.timestampValue ?? '',
        );
        String deliveryDate =
            deliveryTime != null
                ? DateFormat.yMMMMd().format(deliveryTime)
                : '-';

        DateTime? paymentTime = DateTime.tryParse(
          order.fields?.paymentDate?.timestampValue ?? '',
        );
        String paymentDate =
            paymentTime != null ? DateFormat.yMMMMd().format(paymentTime) : '-';

        final soldProductList =
            order.fields?.products?.arrayValue?.values ?? [];

        // [
        //   ORDER DETAILS
        //   'ID',
        //   'Sales',
        //   'Customer',
        //   'Metode Pembayaran',
        //   'Status',
        //   'Catatan',
        //   'Subtotal',
        //   'Total Diskon',
        //   'Total Harga',
        //   'Tanggal Kirim',
        //   'Tanggal Bayar'

        //   SOLD PRODUCT DETAILS
        //   'Nama Produk',
        //   'Jumlah',
        //   'Harga Satuan',
        //   'Diskon Rp/%',
        //   'Total Per Item',
        // ]

        // Add new full row
        sheetData.add([
          orderId,
          salesName,
          customerName,
          paymentMethod,
          orderStatus,
          orderNote,
          subtotal,
          totalDiscount,
          totalPrice,
          deliveryDate,
          paymentDate,
          '',
          '',
          '',
          '',
          '',
        ]);

        // Add product details rows
        for (Value product in soldProductList) {
          String productName = ref
              .read(productListControllerProvider.notifier)
              .getProductName(
                id:
                    product.mapValue?.fields?.productId?.stringValue
                        ?.toString() ??
                    '',
              );
          int quantity =
              int.tryParse(
                product.mapValue?.fields?.quantity?.integerValue.toString() ??
                    '0',
              ) ??
              0;
          int unitPrice =
              int.tryParse(
                product.mapValue?.fields?.unitPrice?.integerValue.toString() ??
                    '0',
              ) ??
              0;
          int discountAmount =
              int.tryParse(
                product.mapValue?.fields?.discountAmount?.integerValue
                        .toString() ??
                    '0',
              ) ??
              0;
          double discountPercentage =
              product.mapValue?.fields?.discountPercentage?.doubleValue ?? 0.0;

          int totalPerItem =
              int.tryParse(
                product.mapValue?.fields?.totalPrice?.integerValue.toString() ??
                    '0',
              ) ??
              0;

          // Add product details row
          sheetData.add([
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            productName,
            quantity,
            unitPrice,
            discountAmount > discountPercentage
                ? rupiahFormat(discountAmount)
                : '${discountPercentage.toStringAsFixed(2)}%',
            totalPerItem,
          ]);
        }
      }

      exportData[DateFormat.yMMMMd().format(date)] = sheetData;
    }

    // Generate file
    try {
      String fileName =
          'Order - ${dateRange.start.year}-${dateRange.start.month}-${dateRange.start.day}_${dateRange.end.year}-${dateRange.end.month}-${dateRange.end.day}';

      // Generate Excel file
      await generateExcelFile(sheetsData: exportData, fileName: fileName);

      return 'File berhasil diekspor dalam folder Downloads: $fileName.xlsx';
    } catch (e) {
      return 'Terjadi kesalahan saat mengekspor file: $e';
    }
  }

  List<OrderDomain> getOrderListByDate(DateTime date) {
    if (_orderList == null) return [];

    final targetDate = DateTime(date.year, date.month, date.day);

    return _orderList!.where((order) {
      final parsed = DateTime.tryParse(order.createTime ?? '');
      if (parsed == null) return false;

      final orderDate = DateTime(parsed.year, parsed.month, parsed.day);
      return orderDate == targetDate;
    }).toList();
  }

  List<OrderDomain> sortOrderListBySalesId(List<OrderDomain> orderList) {
    if (orderList.isEmpty) return [];

    orderList.sort((a, b) {
      final salesIdA = a.fields?.createdBy?.stringValue ?? '';
      final salesIdB = b.fields?.createdBy?.stringValue ?? '';
      return salesIdA.compareTo(salesIdB);
    });

    return orderList;
  }
}
