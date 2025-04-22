import 'package:android_app/functions.dart';
import 'package:android_app/order_module/pages/orderDetailPage.dart';
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
    return Column(
      children: [
        // Search Bar
        customSearchBar(hint: 'Search Orders...'),

        // Order List
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            itemCount: 10,
            separatorBuilder: (context, index) => SizedBox(height: 12.h),
            itemBuilder: (context, index) {
              return customListItem(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderDetailPage(),
                    ),
                  );
                },
                leadIcon: Icons.receipt_long,
                title: 'Order #${1000 + index}',
                subtitle: 'Status: Pending',
                trailIcon: Icons.arrow_forward_ios,
              );
            },
          ),
        ),
      ],
    );
  }
}
