import 'package:android_app/product_module/page/product_detail_page.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/variables.dart';
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
        customSearchBar(hint: 'Search Products...'),

        // Product List
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
                      builder: (context) => const ProductDetailPage(),
                    ),
                  );
                },
                leadIcon: Icons.person,
                title: 'Product ${index + 1}',
                subtitle: rupiahFormatter.format((index + 1) * 100000),
                trailIcon: Icons.arrow_forward_ios,
              );
            },
          ),
        ),
      ],
    );
  }
}
