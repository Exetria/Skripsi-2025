import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

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
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Daftar Pelanggan', style: titleStyle),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: ScreenUtil().screenWidth * 0.25,
                child: customSearchBar(
                  context: context,
                  hint: 'Cari Pelanggan...',
                  onChanged: (query) {
                    ref
                        .read(customerListControllerProvider.notifier)
                        .searchCustomer(query);
                  },
                ),
              ),
              IconButton(
                onPressed: _refreshCustomerList,
                icon: const Icon(Icons.refresh),
                tooltip: 'Segarkan',
              ),
            ],
          ),
          const SizedBox(height: 12),

          Expanded(
            child: customerListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (customerList) {
                if (customerList == null || customerList.isEmpty) {
                  return Center(
                    child: Text(
                      'Data Pelanggan Tidak Ditemukan',
                      style: bodyStyle,
                    ),
                  );
                }
                return LayoutBuilder(
                  builder: (context, constraints) {
                    final crossCount = getCrossAxisCount(constraints);
                    final aspectRatio = getChildAspectRatio(constraints);
                    return GridView.builder(
                      padding: const EdgeInsets.only(top: 8),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossCount,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: aspectRatio,
                      ),
                      itemCount: customerList.length,
                      itemBuilder: (context, index) {
                        final data = customerList[index];
                        return itemCard(
                          context: context,
                          icon: Icons.business_sharp,
                          title: data.fields?.companyName?.stringValue ?? '-',
                          subtitle:
                              data.fields?.companyEmail?.stringValue ?? '-',
                          secondarySubtitle:
                              data.fields?.companyPhoneNumber?.stringValue !=
                                      null
                                  ? phoneNumberFormat(
                                    data
                                            .fields
                                            ?.companyPhoneNumber
                                            ?.stringValue ??
                                        '',
                                  )
                                  : null,
                          bottomText:
                              "Alamat:\n${data.fields?.companyAddress?.stringValue ?? '-'}",
                          onTap: () {},
                        );
                      },
                    );
                  },
                );
              },
              error: (error, _) {
                final exception = error as ApiException;
                return Center(
                  child: Text(
                    'Gagal Memuat Daftar Pelanggan: ${exception.message}',
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
