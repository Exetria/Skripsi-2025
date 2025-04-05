import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Product List',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: ListView.builder(
              itemCount: 8, // replace with actual product count
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  child: ListTile(
                    leading: const Icon(Icons.shopping_bag),
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
                      // Handle tap
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
