import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/utils/functions.dart';

class OrderListFragment extends StatefulHookConsumerWidget {
  const OrderListFragment({super.key});

  @override
  ConsumerState<OrderListFragment> createState() => _OrderListFragmentState();
}

class _OrderListFragmentState extends ConsumerState<OrderListFragment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Order List', style: titleStyle),
              SizedBox(
                width: ScreenUtil().screenWidth / 4,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: fillColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with actual order count
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  elevation: 2,
                  child: ListTile(
                    leading: const Icon(Icons.receipt_long, size: 24),
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
                      // TODO: Order on tap function
                      showOrderDetailDialog(
                        context: context,
                        orderId: 'abc',
                        customerName: 'customer 1',
                        date: 'sabtu gatau kapan',
                        status: 'pending',
                        total: '1000000',
                        onEditPressed: () {
                          print('asds hello edit order');
                        },
                      );
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
