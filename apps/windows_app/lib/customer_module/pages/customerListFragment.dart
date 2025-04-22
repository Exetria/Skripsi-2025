import 'package:common_components/variables.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Customer List', style: titleStyle),
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
          SizedBox(height: 8.h),
          Expanded(
            child: ListView.builder(
              itemCount: 30, // replace with actual customer count
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  child: ListTile(
                    leading: const Icon(Icons.business_sharp),
                    title: Text(
                      'Customer ${index + 1}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    subtitle: Text('Jalan Ahmad Yani No. ${index + 1}'),
                    onTap: () {
                      // TODO sales on tap function
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
