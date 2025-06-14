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
  TextEditingController searchController = TextEditingController();
  bool displayBlacklisted = false;

  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () {
        ref.read(customerListControllerProvider.notifier).resetSearch();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final customerListState = ref.watch(customerListControllerProvider);

    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Column(
        children: [
          // Search Bar
          Row(
            children: [
              Expanded(
                child: customSearchBar(
                  context: context,
                  controller: searchController,
                  hint: 'Cari Pelanggan...',
                  onChanged: (query) {
                    ref
                        .read(customerListControllerProvider.notifier)
                        .searchCustomer(query);
                  },
                ),
              ),
              SizedBox(width: 8.w),
              IconButton(
                icon: Icon(
                  displayBlacklisted ? Icons.block : Icons.check_circle,
                  size: 24.sp,
                ),
                onPressed: () {
                  setState(() {
                    displayBlacklisted = !displayBlacklisted;
                    searchController.text = '';
                  });
                },
              ),
            ],
          ),

          SizedBox(height: 12.h),

          // Customer List
          Expanded(
            child: customerListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),

              data: (customerList) {
                if (customerList == null) {
                  return refreshableInfoWidget(
                    refreshFunction: _refreshCustomerList,
                    content: const Text('Data Pelanggan Tidak Ditemukan'),
                  );
                }

                // Filter blacklisted customers if displayBlacklisted is false
                final finalCustomerList =
                    customerList
                        .where(
                          displayBlacklisted
                              ? (customer) =>
                                  customer.fields?.blacklisted?.booleanValue ??
                                  false
                              : (customer) =>
                                  !(customer
                                          .fields
                                          ?.blacklisted
                                          ?.booleanValue ??
                                      false),
                        )
                        .toList();

                return RefreshIndicator(
                  onRefresh: _refreshCustomerList,
                  child: ListView.separated(
                    itemCount: finalCustomerList.length,
                    separatorBuilder:
                        (context, index) => SizedBox(height: 12.h),
                    itemBuilder: (context, index) {
                      final data = finalCustomerList[index];

                      return customListItem(
                        context: context,
                        leadIcon:
                            displayBlacklisted ? Icons.block : Icons.store,
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
                    'Gagal Memuat Data Pelanggan: ${exception.message}',
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
