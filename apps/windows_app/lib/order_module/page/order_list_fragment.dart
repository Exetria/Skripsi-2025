import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/order_module/page/controller/order_list_controller.dart';
import 'package:windows_app/utils/functions.dart';
import 'package:windows_app/utils/popups.dart';

class OrderListFragment extends StatefulHookConsumerWidget {
  const OrderListFragment({super.key});

  @override
  ConsumerState<OrderListFragment> createState() => _OrderListFragmentState();
}

class _OrderListFragmentState extends ConsumerState<OrderListFragment> {
  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () {
        ref.read(orderListControllerProvider.notifier).resetSearch();
        ref.read(customerListControllerProvider.notifier).resetSearch();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final orderListState = ref.watch(orderListControllerProvider);
    final customerListState = ref.watch(customerListControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Daftar Pesanan', style: titleStyle),
          const SizedBox(height: 10),

          _buildHeader(),
          const SizedBox(height: 12),

          Expanded(
            child: orderListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (orderList) {
                if (orderList == null || orderList.isEmpty) {
                  return Center(
                    child: Text(
                      'Data Pesanan Tidak Ditemukan',
                      style: bodyStyle,
                    ),
                  );
                }
                return LayoutBuilder(
                  builder: (context, constraints) {
                    final crossCount = getCrossAxisCount(constraints);
                    final aspectRatio = getChildAspectRatio(constraints);
                    return GridView.builder(
                      padding: const EdgeInsets.only(top: 8),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossCount,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: aspectRatio,
                      ),
                      itemCount: orderList.length,
                      itemBuilder: (context, index) {
                        final data = orderList[index];

                        final createDate = DateFormat(
                          'd MMM yyyy',
                        ).format(DateTime.parse(data.createTime ?? ''));

                        return itemCard(
                          context: context,
                          icon: Icons.shopping_cart,
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
                          subtitle: getIdFromName(name: data.name),
                          leftBottomText:
                              "Total: \n${rupiahFormat(int.tryParse(data.fields?.totalPrice?.integerValue ?? '') ?? 0)}",
                          rightBottomText:
                              createDate +
                              '\n' +
                              (data.fields?.orderStatus?.stringValue ??
                                  'Unknown'),
                          onTap: () {
                            showOrderDataPopup(
                              ref: ref,
                              context: context,
                              orderData: data,
                            );
                          },
                        );
                      },
                    );
                  },
                );
              },
              error: (error, _) {
                final exception = error as ApiException;
                return Center(
                  child: Text(
                    'Gagal Memuat Daftar Pesanan: ${exception.message}',
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

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: ScreenUtil().screenWidth * 0.25,
          child: customSearchBar(
            context: context,
            hint: 'Cari Pesanan...',
            onChanged: (query) {
              ref
                  .read(orderListControllerProvider.notifier)
                  .searchOrderByCustomer(query);
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () async {
                final DateTimeRange? pickedRange = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                  currentDate: DateTime.now(),
                  initialDateRange: DateTimeRange(
                    start: DateTime.now().subtract(const Duration(days: 7)),
                    end: DateTime.now(),
                  ),
                  helpText: 'Pilih Jangka Waktu',
                  cancelText: 'Tutup',
                  confirmText: 'Pilih',
                  saveText: 'Pilih',
                );

                if (pickedRange != null) {
                  final String message = await ref
                      .read(orderListControllerProvider.notifier)
                      .exportOrderData(pickedRange);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(message, style: bodyStyle)),
                  );
                }
              },
              icon: const Icon(Icons.download),
              tooltip: 'Ekspor',
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: _refreshOrderList,
              icon: const Icon(Icons.refresh),
              tooltip: 'Segarkan',
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _refreshOrderList() async {
    ref.invalidate(orderListControllerProvider);
  }

  Future<void> _refreshCustomerList() async {
    ref.invalidate(customerListControllerProvider);
  }
}
