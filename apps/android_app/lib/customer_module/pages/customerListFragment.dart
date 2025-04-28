import 'package:android_app/customer_module/pages/customerDetailPage.dart';
import 'package:android_app/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerListFragment extends StatefulHookConsumerWidget {
  const CustomerListFragment({super.key});

  @override
  ConsumerState<CustomerListFragment> createState() => _CustomerListFragment();
}

class _CustomerListFragment extends ConsumerState<CustomerListFragment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Bar
        customSearchBar(hint: 'Search Customers...'),

        // Customer List
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
                      builder: (context) => const CustomerDetailPage(),
                    ),
                  );
                },
                leadIcon: Icons.person,
                title: 'Customer ${index + 1}',
                subtitle: 'customer${index + 1}@example.com',
                trailIcon: Icons.arrow_forward_ios,
              );
            },
          ),
        ),
      ],
    );
  }
}
