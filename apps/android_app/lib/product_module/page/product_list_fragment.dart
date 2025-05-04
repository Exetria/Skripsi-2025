import 'package:android_app/product_module/page/controller/product_list_controller.dart';
import 'package:android_app/product_module/page/product_detail_page.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
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
    final productListState = ref.watch(productListControllerProvider);

    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Column(
        children: [
          // Search Bar
          customSearchBar(hint: 'Search Products...'),

          SizedBox(height: 12.h),

          // Product List
          Expanded(
            child: productListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (productList) {
                if (productList == null || productList.isEmpty) {
                  return const Center(child: Text('No sales data found.'));
                }

                return ListView.separated(
                  itemCount: productList.length,
                  separatorBuilder: (context, index) => SizedBox(height: 12.h),
                  itemBuilder: (context, index) {
                    final data = productList[index];

                    // Format Product Price
                    final num? priceNumber = stringToNum(
                      data.fields?.price?.integerValue ?? '',
                    );
                    final String priceText =
                        priceNumber != null ? rupiahFormat(priceNumber) : '-';

                    return customListItem(
                      leadIcon: Icons.person,
                      title: data.fields?.productName?.stringValue ?? '-',
                      subtitle: priceText,
                      trailIcon: Icons.arrow_forward_ios,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductDetailPage(),
                          ),
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
                    'Error Loading Product List: ${exception.message}',
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
