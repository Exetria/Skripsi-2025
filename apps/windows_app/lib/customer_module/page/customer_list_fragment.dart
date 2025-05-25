import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';
import 'package:windows_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/customer_module/page/controller/customer_request_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

class CustomerListFragment extends StatefulHookConsumerWidget {
  const CustomerListFragment({super.key});

  @override
  ConsumerState<CustomerListFragment> createState() => _CustomerListFragment();
}

class _CustomerListFragment extends ConsumerState<CustomerListFragment> {
  TextEditingController searchController = TextEditingController();

  bool seeCustomer = true;

  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () {
        ref.read(customerListControllerProvider.notifier).resetSearch();
        ref.read(customerRequestListControllerProvider.notifier).resetSearch();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final customerListState = ref.watch(customerListControllerProvider);
    final customerRequestListState = ref.watch(
      customerRequestListControllerProvider,
    );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Daftar Pelanggan', style: titleStyle),
          const SizedBox(height: 10),

          _buildHeader(),
          const SizedBox(height: 12),

          Expanded(
            child:
                seeCustomer
                    ? buildCustomerList(customerListState)
                    : buildCustomerRequestList(customerRequestListState),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: ScreenUtil().screenWidth * 0.25,
              child: customSearchBar(
                context: context,
                controller: searchController,
                hint:
                    seeCustomer
                        ? 'Cari Pelanggan...'
                        : 'Cari Permohonan Pelanggan...',
                onChanged: (query) {
                  seeCustomer
                      ? ref
                          .read(customerListControllerProvider.notifier)
                          .searchCustomer(query)
                      : ref
                          .read(customerRequestListControllerProvider.notifier)
                          .searchCustomerRequest(query);
                },
              ),
            ),
            const SizedBox(width: 16),

            IconButton(
              onPressed: () {
                setState(() {
                  seeCustomer = true;
                  searchController.clear();
                  ref
                      .read(customerListControllerProvider.notifier)
                      .resetSearch();
                  ref
                      .read(customerRequestListControllerProvider.notifier)
                      .resetSearch();
                });
              },
              icon: Icon(
                Icons.business_sharp,
                color:
                    seeCustomer
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
              ),
              tooltip: 'Tampilkan Pelanggan',
            ),
            const SizedBox(width: 12),

            IconButton(
              onPressed: () {
                setState(() {
                  seeCustomer = false;
                  searchController.clear();
                  ref
                      .read(customerListControllerProvider.notifier)
                      .resetSearch();
                  ref
                      .read(customerRequestListControllerProvider.notifier)
                      .resetSearch();
                });
              },
              icon: Icon(
                Icons.add_business,
                color:
                    !seeCustomer
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
              ),
              tooltip: 'Tampilkan Permohonan Pelanggan',
            ),
            const SizedBox(width: 12),
          ],
        ),
        IconButton(
          onPressed:
              seeCustomer ? _refreshCustomerList : _refreshCustomerRequestList,
          icon: const Icon(Icons.refresh),
          tooltip: 'Segarkan',
        ),
      ],
    );
  }

  Widget buildCustomerList(
    AsyncValue<List<CustomerDomain>?> customerListState,
  ) {
    return customerListState.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (customerList) {
        if (customerList == null || customerList.isEmpty) {
          return Center(
            child: Text('Data Pelanggan Tidak Ditemukan', style: bodyStyle),
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
                  subtitle: data.fields?.companyEmail?.stringValue ?? '-',
                  secondarySubtitle:
                      data.fields?.companyPhoneNumber?.stringValue != null
                          ? phoneNumberFormat(
                            data.fields?.companyPhoneNumber?.stringValue ?? '',
                          )
                          : null,

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
    );
  }

  Widget buildCustomerRequestList(
    AsyncValue<List<CustomerRequestDomain>?> customerRequestListState,
  ) {
    return customerRequestListState.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (customerRequestList) {
        if (customerRequestList == null || customerRequestList.isEmpty) {
          return Center(
            child: Text(
              'Data Permohonan Pendaftaran Pelanggan Tidak Ditemukan',
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
              itemCount: customerRequestList.length,
              itemBuilder: (context, index) {
                final data = customerRequestList[index];
                return itemCard(
                  context: context,
                  icon: Icons.add_business,
                  title: data.fields?.companyName?.stringValue ?? '-',
                  subtitle: data.fields?.companyEmail?.stringValue ?? '-',
                  secondarySubtitle:
                      data.fields?.companyPhoneNumber?.stringValue != null
                          ? phoneNumberFormat(
                            data.fields?.companyPhoneNumber?.stringValue ?? '',
                          )
                          : null,
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
            'Gagal Memuat Daftar Permohonan Pendaftaran Pelanggan: ${exception.message}',
            style: errorStyle,
          ),
        );
      },
    );
  }

  Future<void> _refreshCustomerRequestList() async {
    ref.invalidate(customerRequestListControllerProvider);
  }

  Future<void> _refreshCustomerList() async {
    ref.invalidate(customerListControllerProvider);
  }
}
