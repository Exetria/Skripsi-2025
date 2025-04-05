import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SalesListFragment extends StatefulHookConsumerWidget {
  const SalesListFragment({super.key});

  @override
  ConsumerState<SalesListFragment> createState() => _SalesListFragmentState();
}

class _SalesListFragmentState extends ConsumerState<SalesListFragment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sales List',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: ListView.builder(
              itemCount: 12, // replace with actual sales count
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  child: ListTile(
                    leading: const Icon(Icons.receipt_long),
                    title: Text(
                      'Order #${1000 + index}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    subtitle: Text(
                      'Customer ${index + 1} • Apr ${index + 1}, 2025',
                    ),
                    trailing: Text(
                      '₱ ${(index + 1) * 150}',
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
