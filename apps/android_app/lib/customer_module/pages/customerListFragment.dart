import 'package:android_app/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerListFragment extends StatefulHookConsumerWidget {
  const CustomerListFragment({super.key});

  @override
  ConsumerState<CustomerListFragment> createState() => _CustomerListFragment();
}

class _CustomerListFragment extends ConsumerState<CustomerListFragment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Bar
        Padding(
          padding: EdgeInsets.all(16.w), // Responsive padding
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Customers...',
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

        // Customer List
        Expanded(
          child: ListView.separated(
            itemCount: 10, // Dummy customer count
            separatorBuilder: (context, index) => Divider(color: dividerColor),
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 24.r, // Responsive avatar size
                  backgroundColor: secondaryColor,
                  child: Icon(Icons.person, size: 24.sp, color: dividerColor),
                ),
                title: Text(
                  'Customer ${index + 1}',
                  style: bodyStyle.copyWith(fontSize: 16.sp),
                ),
                subtitle: Text(
                  'customer@example.com',
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
