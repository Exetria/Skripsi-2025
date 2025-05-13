import 'package:android_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:android_app/customer_module/page/customer_detail_page.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
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
    final customerListState = ref.watch(customerListControllerProvider);

    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Column(
        children: [
          // Search Bar
          customSearchBar(context: context, hint: 'Search Customers...'),

          SizedBox(height: 12.h),

          // Customer List
          Expanded(
            child: customerListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),

              data: (customerList) {
                if (customerList == null || customerList.isEmpty) {
                  return refreshableInfoWidget(
                    refreshFunction: _refreshCustomerList,
                    content: const Text('No Customer Data Found'),
                  );
                }

                return RefreshIndicator(
                  onRefresh: _refreshCustomerList,
                  child: ListView.separated(
                    itemCount: customerList.length,
                    separatorBuilder:
                        (context, index) => SizedBox(height: 12.h),
                    itemBuilder: (context, index) {
                      final data = customerList[index];

                      return customListItem(
                        context: context,
                        leadIcon: Icons.business,
                        title: data.fields?.companyName?.stringValue ?? '-',
                        subtitle:
                            data.fields?.companyAddress?.stringValue ?? '-',
                        trailIcon: Icons.arrow_forward_ios,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => CustomerDetailPage(data: data),
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
                  refreshFunction: _refreshCustomerList,
                  content: Text(
                    'Error Loading Customer List: ${exception.message}',
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

  Future<void> _refreshCustomerList() async {
    ref.invalidate(customerListControllerProvider);
  }
}
