import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/sales_module/page/controller/sales_controller.dart';
import 'package:windows_app/utils/functions.dart';

class SalesListFragment extends StatefulHookConsumerWidget {
  const SalesListFragment({super.key});

  @override
  ConsumerState<SalesListFragment> createState() => _SalesListFragmentState();
}

class _SalesListFragmentState extends ConsumerState<SalesListFragment> {
  @override
  Widget build(BuildContext context) {
    final salesListState = ref.watch(salesControllerProvider);

    salesListState.when(
      loading: () => {print('asds loading')},
      data: (data) => {print('asds data: $data')},
      error: (error, stackTrace) => {print('asds error ${error.toString()}')},
    );

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
            child: ListView.builder(
              itemCount: 12, // replace with actual sales count
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: const Icon(Icons.person_2),
                    title: Text(
                      'Sales #${1000 + index}',
                      style: const TextStyle(fontSize: 14),
                    ),
                    subtitle: Text('Last Login:  Apr ${index + 1}, 2025'),
                    trailing: Text(
                      'This Month: ${rupiahFormatter.format((index * 10000) + 100000)}',
                      style: const TextStyle(fontSize: 13),
                    ),
                    onTap: () {
                      // TODO sales on tap function
                      showSalesDetailDialog(
                        context: context,
                        name: 'bambang',
                        email: 'email',
                        onEditPressed: () {
                          print('asds hello tap sales');
                        },
                        phone: 'hape',
                        area: 'area',
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
