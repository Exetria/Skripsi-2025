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
          customSearchBar(
            context: context,
            hint: 'Search Products...',
            onChanged: (query) {
              ref
                  .read(productListControllerProvider.notifier)
                  .searchProduct(query);
            },
          ),

          SizedBox(height: 12.h),

          // Product List
          Expanded(
            child: productListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (productList) {
                if (productList == null || productList.isEmpty) {
                  return refreshableInfoWidget(
                    refreshFunction: _refreshProductList,
                    content: const Text('No Product Data Found'),
                  );
                }

                return RefreshIndicator(
                  onRefresh: _refreshProductList,
                  child: ListView.separated(
                    itemCount: productList.length,
                    separatorBuilder:
                        (context, index) => SizedBox(height: 12.h),
                    itemBuilder: (context, index) {
                      final data = productList[index];

                      return customListItem(
                        context: context,
                        leadIcon: Icons.inventory_2,
                        title: data.fields?.productName?.stringValue ?? '-',
                        subtitle: data.fields?.brand?.stringValue ?? '-',
                        trailIcon: Icons.arrow_forward_ios,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => ProductDetailPage(data: data),
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

                return refreshableInfoWidget(
                  refreshFunction: _refreshProductList,
                  content: Text(
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

  Future<void> _refreshProductList() async {
    ref.invalidate(productListControllerProvider);
  }
}
