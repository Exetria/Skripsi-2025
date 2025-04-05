import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderListFragment extends StatefulHookConsumerWidget {
  const OrderListFragment({super.key});

  @override
  ConsumerState<OrderListFragment> createState() => _OrderListFragmentState();
}

class _OrderListFragmentState extends ConsumerState<OrderListFragment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Order List',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.h),

          // Order list
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with actual order count
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  elevation: 2,
                  child: ListTile(
                    leading: const Icon(
                      Icons.inventory_2,
                      size: 24,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      'Order #ORD-${1000 + index}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    subtitle: Text('Customer ${index + 1} • Status: Shipped'),
                    trailing: Text(
                      '₱ ${(index + 1) * 250}',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () {
                      // Handle tap or navigate to order details
                    },
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
