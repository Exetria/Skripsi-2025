import 'package:android_app/customer_module/page/controller/customer_request_list_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerRequestListPage extends StatefulHookConsumerWidget {
  const CustomerRequestListPage({super.key});

  @override
  ConsumerState<CustomerRequestListPage> createState() =>
      _CustomerRequestListPage();
}

class _CustomerRequestListPage extends ConsumerState<CustomerRequestListPage> {
  @override
  Widget build(BuildContext context) {
    final customerRequestListState = ref.watch(
      customerRequestListControllerProvider,
    );

    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Daftar Pendaftaran Pelanggan Baru',
        showLeftButton: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.r),
        child: Column(
          children: [
            // Customer request list
            Expanded(
              child: customerRequestListState.when(
                loading: () => const Center(child: CircularProgressIndicator()),

                data: (customerRequestList) {
                  if (customerRequestList == null ||
                      customerRequestList.isEmpty) {
                    return refreshableInfoWidget(
                      refreshFunction: _refreshCustomerRequestList,
                      content: const Text(
                        'Data Pendaftaran Pelanggan Tidak Ditemukan',
                      ),
                    );
                  }

                  return RefreshIndicator(
                    onRefresh: _refreshCustomerRequestList,
                    child: ListView.separated(
                      itemCount: customerRequestList.length,
                      separatorBuilder:
                          (context, index) => SizedBox(height: 12.h),
                      itemBuilder: (context, index) {
                        final data = customerRequestList[index];

                        String approvalStatus =
                            data.fields?.approvalStatus?.stringValue ?? '';
                        String displayedApprovalStatus = 'Tidak Tersedia';

                        if (approvalStatus == 'pending') {
                          displayedApprovalStatus = 'Menunggu Konfirmasi';
                        } else if (approvalStatus == 'approved') {
                          displayedApprovalStatus = 'Diterima';
                        } else if (approvalStatus == 'rejected') {
                          displayedApprovalStatus = 'Ditolak';
                        }

                        return customListItem(
                          context: context,
                          leadIcon: Icons.add_business,
                          title: data.fields?.companyName?.stringValue ?? '-',
                          subtitle: displayedApprovalStatus,
                          onTap: () {},
                        );
                      },
                    ),
                  );
                },

                error: (error, _) {
                  final exception = error as ApiException;

                  return refreshableInfoWidget(
                    refreshFunction: _refreshCustomerRequestList,
                    content: Text(
                      'Gagal Memuat Data Daftar Pendaftaran PelangganS: ${exception.message}',
                      style: errorStyle,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _refreshCustomerRequestList() async {
    ref.invalidate(customerRequestListControllerProvider);
  }
}
