import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerListFragment extends StatefulHookConsumerWidget {
  const CustomerListFragment({super.key});

  @override
  ConsumerState<CustomerListFragment> createState() =>
      _CustomerListFragmentState();
}

class _CustomerListFragmentState extends ConsumerState<CustomerListFragment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Customer List',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // replace with actual customer count
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  child: ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(
                      'Customer ${index + 1}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    subtitle: Text('customer${index + 1}@example.com'),
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
