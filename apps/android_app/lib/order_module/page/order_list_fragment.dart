import 'package:android_app/order_module/page/controller/order_list_controller.dart';
import 'package:android_app/order_module/page/order_detail_page.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderListFragment extends StatefulHookConsumerWidget {
  const OrderListFragment({super.key});

  @override
  ConsumerState<OrderListFragment> createState() => _OrderListFragment();
}

class _OrderListFragment extends ConsumerState<OrderListFragment> {
  @override
  Widget build(BuildContext context) {
    final orderListState = ref.watch(orderListControllerProvider);

    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Column(
        children: [
          // Search Bar
          customSearchBar(hint: 'Search Orders...'),

          SizedBox(height: 12.h),

          // Order List
          Expanded(
            child: orderListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),

              data: (orderList) {
                if (orderList == null || orderList.isEmpty) {
                  return const Center(child: Text('No Order Data Found.'));
                }

                return RefreshIndicator(
                  onRefresh: () async {
                    ref.invalidate(orderListControllerProvider);
                  },
                  child: ListView.separated(
                    itemCount: orderList.length,
                    separatorBuilder:
                        (context, index) => SizedBox(height: 12.h),
                    itemBuilder: (context, index) {
                      final data = orderList[index];

                      return customListItem(
                        leadIcon: Icons.receipt_long,
                        title: 'Order ${data.name?.substring(58) ?? "-"}',
                        subtitle:
                            'Status: ${data.fields?.orderStatus?.stringValue ?? "-"}',
                        trailIcon: Icons.arrow_forward_ios,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OrderDetailPage(),
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

                return Center(
                  child: Text(
                    'Error Loading Order List: ${exception.message}',
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
}
