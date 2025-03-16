import 'package:android_app/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductListFragment extends StatefulHookConsumerWidget {
  const ProductListFragment({super.key});

  @override
  ConsumerState<ProductListFragment> createState() => _ProductListFragment();
}

class _ProductListFragment extends ConsumerState<ProductListFragment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Bar
        Padding(
          padding: EdgeInsets.all(16.w), // Responsive padding
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Products...',
              hintStyle: bodyStyle.copyWith(
                fontSize: 16.sp,
                color: textColor.withAlpha(178),
              ), // Faded text
              prefixIcon: Icon(Icons.search, color: textColor.withAlpha(178)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
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

        // Product List
        Expanded(
          child: ListView.separated(
            itemCount: 10, // Dummy product count
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
                    Icons.shopping_bag,
                    size: 24.sp,
                    color: secondaryColor,
                  ),
                ),
                title: Text(
                  'Product ${index + 1}',
                  style: bodyStyle.copyWith(fontSize: 16.sp),
                ),
                subtitle: Text(
                  '\$99.99', // Dummy price
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
