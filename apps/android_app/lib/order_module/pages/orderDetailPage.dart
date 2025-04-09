import 'package:android_app/variables.dart';
import 'package:android_app/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderDetailPage extends StatefulHookConsumerWidget {
  const OrderDetailPage({super.key});

  @override
  ConsumerState<OrderDetailPage> createState() => _OrderDetailPage();
}

class _OrderDetailPage extends ConsumerState<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    // Placeholder order data – to be passed from constructor later
    final List<Map<String, dynamic>> orderItems = [
      {'name': 'Product A', 'quantity': 2, 'price': 10.0},
      {'name': 'Product B', 'quantity': 1, 'price': 25.0},
      {'name': 'Product C', 'quantity': 3, 'price': 5.0},
    ];

    final String orderId = '#ORD123456'; // <-- required
    final double totalPrice = orderItems.fold<double>(
      0,
      (sum, item) =>
          sum + (item['price'] as double) * (item['quantity'] as int),
    );

    return Scaffold(
      appBar: customAppBar(title: 'Order Detail', showBackButton: true),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ordered Items List
            ...orderItems.map((item) {
              final itemTotal =
                  (item['price'] as double) * (item['quantity'] as int);

              return Container(
                margin: EdgeInsets.only(bottom: 12.h),
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: dividerColor,
                      blurRadius: 8,
                      offset: Offset(0, 6.h),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Item name and quantity
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['name'],
                          style: bodyStyle.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          'Qty: ${item['quantity']}',
                          style: captionStyle.copyWith(fontSize: 14.sp),
                        ),
                      ],
                    ),

                    // Item total price
                    Text(
                      '\$${itemTotal.toStringAsFixed(2)}',
                      style: bodyStyle.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: successColor,
                      ),
                    ),
                  ],
                ),
              );
            }),

            const Spacer(),

            // Order ID
            Padding(
              padding: EdgeInsets.only(top: 12.h),
              child: Text(
                'Order ID: $orderId',
                style: captionStyle.copyWith(
                  fontSize: 14.sp,
                  color: unselectedItemColor,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: tertiaryColor,
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              const Spacer(),
              Text(
                'Total: \$${totalPrice.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
