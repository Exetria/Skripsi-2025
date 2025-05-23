import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/product_module/page/controller/product_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

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
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Daftar Produk', style: titleStyle),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: ScreenUtil().screenWidth * 0.25,
                child: customSearchBar(
                  context: context,
                  hint: 'Search...',
                  onChanged: (query) {
                    ref
                        .read(productListControllerProvider.notifier)
                        .searchProduct(query);
                  },
                ),
              ),
              IconButton(
                onPressed: _refreshProductList,
                icon: const Icon(Icons.refresh),
                tooltip: 'Segarkan',
              ),
            ],
          ),
          const SizedBox(height: 12),

          Expanded(
            child: productListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (customerList) {
                if (customerList == null || customerList.isEmpty) {
                  return Center(
                    child: Text(
                      'Data Produk Tidak Ditemukan',
                      style: bodyStyle,
                    ),
                  );
                }
                return LayoutBuilder(
                  builder: (context, constraints) {
                    final crossCount = getCrossAxisCount(constraints);
                    final aspectRatio = getChildAspectRatio(constraints);
                    return GridView.builder(
                      padding: const EdgeInsets.only(top: 8),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossCount,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: aspectRatio,
                      ),
                      itemCount: customerList.length,
                      itemBuilder: (context, index) {
                        final data = customerList[index];
                        return itemCard(
                          context: context,
                          icon: Icons.business_sharp,
                          title: data.fields?.productName?.stringValue ?? '-',
                          subtitle: getIdFromName(name: data.name),
                          bottomText:
                              "Price per pcs: \n${rupiahFormat(int.tryParse(data.fields?.price?.integerValue ?? '') ?? 0)}",
                          onTap: () {},
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
                    'Gagal Memuat Daftar Produk: ${exception.message}',
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
