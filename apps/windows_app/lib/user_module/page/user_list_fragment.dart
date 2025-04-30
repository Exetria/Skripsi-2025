import 'package:common_components/utils/formatter_functions.dart';
import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

class SalesListFragment extends StatefulHookConsumerWidget {
  const SalesListFragment({super.key});

  @override
  ConsumerState<SalesListFragment> createState() => _SalesListFragmentState();
}

class _SalesListFragmentState extends ConsumerState<SalesListFragment> {
  @override
  Widget build(BuildContext context) {
    final userListState = ref.watch(userListControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sales List', style: titleStyle),
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
            child: userListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),

              data: (salesList) {
                if (salesList == null || salesList.isEmpty) {
                  return const Center(child: Text('No sales data found.'));
                }

                return ListView.builder(
                  itemCount: salesList.length,
                  itemBuilder: (context, index) {
                    final data = salesList[index]; // Skip null entries

                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: const Icon(Icons.person_2),
                        title: Text(
                          data.fields?.fullName?.stringValue ?? '-',
                          style: const TextStyle(fontSize: 14),
                        ),
                        subtitle: Text(
                          'Last Login: Apr ${index + 1}, 2025',
                        ), // Replace with actual login date
                        trailing: Text(
                          'This Month: ${rupiahFormat((index * 10000) + 100000)}', // Replace with real amount
                          style: const TextStyle(fontSize: 13),
                        ),
                        onTap: () {
                          showSalesDetailDialog(
                            context: context,
                            name: data.fields?.fullName?.stringValue ?? '-',
                            email: data.fields?.email?.stringValue ?? '-',
                            onEditPressed: () {
                              print('Edit sales');
                            },
                            phone: data.fields?.phoneNumber?.stringValue ?? '-',
                          );
                        },
                      ),
                    );
                  },
                );
              },

              error:
                  (error, _) => Center(
                    child: Text(
                      'Error loading sales list: $error',
                      style: errorStyle,
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
