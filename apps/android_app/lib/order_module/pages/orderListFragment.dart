import 'package:android_app/variables.dart';
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
        Padding(
          padding: EdgeInsets.all(16.w), // Responsive padding
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Orders...',
              hintStyle: bodyStyle.copyWith(
                fontSize: 16.sp,
                color: textColor.withAlpha(178),
              ), // Faded text
              prefixIcon: Icon(Icons.search, color: textColor.withAlpha(178)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  10.r,
                ), // Responsive border radius
                borderSide: BorderSide(color: dividerColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: dividerColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: primaryColor, width: 2),
              ),
            ),
          ),
        ),

        // Order List
        Expanded(
          child: ListView.separated(
            itemCount: 10, // Dummy order count
            separatorBuilder: (context, index) => Divider(color: dividerColor),
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  width: 50.w, // Responsive width
                  height: 50.h, // Responsive height
                  decoration: BoxDecoration(
                    color: secondaryColor.withAlpha(
                      51,
                    ), // Light secondary color
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    Icons.receipt_long,
                    size: 24.sp,
                    color: secondaryColor,
                  ),
                ),
                title: Text(
                  'Order #${1000 + index}',
                  style: bodyStyle.copyWith(fontSize: 16.sp),
                ),
                subtitle: Text(
                  'Status: Pending', // Dummy status
                  style: captionStyle.copyWith(fontSize: 14.sp),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16.sp,
                  color: textColor.withAlpha(178),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
