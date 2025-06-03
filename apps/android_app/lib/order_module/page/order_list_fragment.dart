import 'package:android_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:android_app/order_module/domain/entities/order_domain.dart';
import 'package:android_app/order_module/page/controller/order_list_controller.dart';
import 'package:android_app/order_module/page/order_detail_page.dart';
import 'package:android_app/product_module/page/controller/product_list_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class OrderListFragment extends StatefulHookConsumerWidget {
  const OrderListFragment({super.key});

  @override
  ConsumerState<OrderListFragment> createState() => _OrderListFragment();
}

class _OrderListFragment extends ConsumerState<OrderListFragment> {
  DateTimeRange? _selectedDateRange;

  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () {
        ref.read(productListControllerProvider.notifier).resetSearch();
        ref.read(customerListControllerProvider.notifier).resetSearch();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final customerListState = ref.watch(customerListControllerProvider);
    final orderListState = ref.watch(orderListControllerProvider);

    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Column(
        children: [
          // Search Bar
          Row(
            children: [
              Expanded(
                child: customSearchBar(
                  context: context,
                  hint: 'Cari Order...',
                  onChanged: (query) {
                    ref
                        .read(orderListControllerProvider.notifier)
                        .searchOrderByCustomer(query);
                  },
                ),
              ),

              Row(
                children: [
                  // Reset Filter Button
                  _selectedDateRange != null
                      ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          ref
                              .read(orderListControllerProvider.notifier)
                              .resetSearch();

                          setState(() {
                            _selectedDateRange = null;
                          });
                        },
                      )
                      : const SizedBox.shrink(),

                  // Date Range Picker Button
                  IconButton(
                    icon: const Icon(Icons.date_range),
                    onPressed: () {
                      showDateRangePicker(
                        context: context,
                        firstDate: DateTime(2020),
                        lastDate: DateTime.now(),
                        helpText: 'Pilih Rentang Tanggal',
                        saveText: 'Terapkan',
                      ).then((value) {
                        if (value != null) {
                          ref
                              .read(orderListControllerProvider.notifier)
                              .filterOrderByDateRange(value);

                          setState(() {
                            _selectedDateRange = value;
                          });
                        }
                      });
                    },
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 12.h),

          // Order List
          Expanded(
            child: orderListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),

              data: (orderList) {
                if (orderList == null || orderList.isEmpty) {
                  return refreshableInfoWidget(
                    refreshFunction: _refreshOrderList,
                    content: const Text('Data Order Tidak Ditemukan'),
                  );
                }
                return RefreshIndicator(
                  onRefresh: _refreshOrderList,
                  child: ListView.separated(
                    itemCount: orderList.length,
                    separatorBuilder:
                        (context, index) => SizedBox(height: 12.h),
                    itemBuilder: (context, index) {
                      final data = orderList[index];
                      List<Value> productValueList =
                          data.fields?.products?.arrayValue?.values ?? [];

                      // LANJUT DARISINI, CONVERT - PASSING KE DETAILS - UPDATE PAKE DATA BARU
                      // Create product list
                      List<Map<String, dynamic>> productDataList =
                          createProductDataList(products: productValueList);

                      return customListItem(
                        context: context,
                        leadIcon: Icons.shopping_cart,
                        title: customerListState.when(
                          loading: () => 'Memuat...',
                          data: (customerList) {
                            return "Order ${ref.read(customerListControllerProvider.notifier).getCustomerName(id: data.fields?.customerId?.stringValue ?? '')}";
                          },
                          error: (error, stackTrace) {
                            _refreshCustomerList();
                            return 'Gagal Memuat Nama';
                          },
                        ),
                        subtitle:
                            '${(data.createTime != null && data.createTime != '') ? DateFormat.yMMMMd().format(DateTime.parse(data.createTime!)) : "Gagal Memuat Tanggal"}\nStatus: ${getOrderStatusText(data.fields?.orderStatus?.stringValue ?? "-")}',
                        trailIcon: Icons.arrow_forward_ios,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => OrderDetailPage(
                                    orderData: data,
                                    productDataList: productDataList,
                                  ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                );
              },

              error: (error, _) {
                final exception = error as ApiException;

                return refreshableInfoWidget(
                  refreshFunction: _refreshOrderList,
                  content: Text(
                    'Gagal Memuat Data Pesanan: ${exception.message}',
                    style: errorStyle,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> createProductDataList({
    required List<Value> products,
  }) {
    List<Map<String, dynamic>> result = [];
    for (var product in products) {
      Map<String, dynamic> newMap = {
        'mapValue': {
          'fields': {
            'product_id': {
              'stringValue':
                  product.mapValue?.fields?.productId?.stringValue ?? '',
            },
            'quantity': {
              'integerValue':
                  product.mapValue?.fields?.quantity?.integerValue ?? '0',
            },
            'unit_price': {
              'integerValue':
                  product.mapValue?.fields?.unitPrice?.integerValue ?? '',
            },
            'total_price': {
              'integerValue':
                  product.mapValue?.fields?.totalPrice?.integerValue ?? '',
            },
          },
        },
      };

      // Add discount fields conditionally (fixed amount or percentage)
      if (product.mapValue?.fields?.discountAmount?.integerValue != null) {
        newMap['mapValue']['fields']['discount_amount'] = {
          'integerValue':
              product.mapValue?.fields?.discountAmount?.integerValue ?? '0',
        };
      } else if (product.mapValue?.fields?.discountPercentage?.doubleValue !=
          null) {
        newMap['mapValue']['fields']['discount_percentage'] = {
          'doubleValue':
              product.mapValue?.fields?.discountPercentage?.doubleValue
                  .toString() ??
              '0',
        };
      }

      // Add product data to list
      result.add(newMap);
    }
    return result;
  }

  Future<void> _refreshCustomerList() async {
    ref.invalidate(customerListControllerProvider);
  }

  Future<void> _refreshOrderList() async {
    ref.invalidate(orderListControllerProvider);
    _selectedDateRange = null;
  }
}
