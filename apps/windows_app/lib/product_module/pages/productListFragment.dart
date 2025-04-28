import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/utils/functions.dart';

class ProductListFragment extends StatefulHookConsumerWidget {
  const ProductListFragment({super.key});

  @override
  ConsumerState<ProductListFragment> createState() =>
      _ProductListFragmentState();
}

class _ProductListFragmentState extends ConsumerState<ProductListFragment> {
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
              Text('Product List', style: titleStyle),
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
              itemCount: 8, // replace with actual product count
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: const Icon(Icons.inventory_2),
                    title: Text(
                      'Product ${index + 1}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    subtitle: Text('SKU00${index + 1}'),
                    trailing: Text(
                      '₱ ${(index + 1) * 100}',
                      style: const TextStyle(fontSize: 13),
                    ),
                    onTap: () {
                      // TODO: Product on tap function
                      showProductDetailDialog(
                        context: context,
                        productName: 'pensil',
                        productCode: 'abc',
                        category: 'atk',
                        price: '1000',
                        availability: true,
                        onEditPressed: () {
                          print('asds hello edit product');
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
