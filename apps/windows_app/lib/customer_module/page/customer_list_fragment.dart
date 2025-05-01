import 'package:common_components/utils/api_exception.dart';
import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

class CustomerListFragment extends StatefulHookConsumerWidget {
  const CustomerListFragment({super.key});

  @override
  ConsumerState<CustomerListFragment> createState() =>
      _CustomerListFragmentState();
}

class _CustomerListFragmentState extends ConsumerState<CustomerListFragment> {
  @override
  Widget build(BuildContext context) {
    final customerListState = ref.watch(customerListControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
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
          const SizedBox(height: 8),
          Expanded(
            child: customerListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),

              data: (customerList) {
                if (customerList == null || customerList.isEmpty) {
                  return const Center(child: Text('No sales data found.'));
                }

                return ListView.builder(
                  itemCount: customerList.length,
                  itemBuilder: (context, index) {
                    final data = customerList[index]; // Skip null entries

                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: const Icon(Icons.business_sharp),
                        title: Text(
                          data.fields?.companyName?.stringValue ?? '-',
                          style: const TextStyle(fontSize: 14),
                        ),
                        subtitle: Text(
                          data.fields?.companyAddress?.stringValue ?? '-',
                        ),
                        onTap: () {
                          // TODO: customer on tap function
                          showCustomerDetailDialog(
                            context: context,
                            name: data.fields?.companyName?.stringValue ?? '-',
                            email:
                                data.fields?.companyEmail?.stringValue ?? '-',
                            phone:
                                data.fields?.companyPhoneNumber?.stringValue ??
                                '-',
                            address:
                                data.fields?.companyAddress?.stringValue ?? '-',
                            onEditPressed: () {},
                          );
                        },
                      ),
                    );
                  },
                );
              },

              error: (error, _) {
                final apiexe = error as ApiException;

                return Center(
                  child: Text(
                    'Error Loading Customer List: ${apiexe.responseBody}',
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
}
