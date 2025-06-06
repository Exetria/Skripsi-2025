import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';
import 'package:windows_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/customer_module/page/controller/customer_request_list_controller.dart';
import 'package:windows_app/customer_module/page/controller/update_customer_controller.dart';
import 'package:windows_app/order_module/domain/entities/order_domain.dart';
import 'package:windows_app/order_module/page/controller/order_list_controller.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

class CustomerListFragment extends StatefulHookConsumerWidget {
  const CustomerListFragment({super.key});

  @override
  ConsumerState<CustomerListFragment> createState() => _CustomerListFragment();
}

class _CustomerListFragment extends ConsumerState<CustomerListFragment> {
  TextEditingController searchController = TextEditingController();

  bool listViewEnabled = true;
  bool seeCustomer = true;

  CustomerDomain? focusedCustomerData;

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

          listViewEnabled
              ? Expanded(
                child:
                    seeCustomer
                        ? buildCustomerList(customerListState)
                        : buildCustomerRequestList(customerRequestListState),
              )
              : Expanded(child: buildCustomerDetailView()),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return listViewEnabled
        ? Row(
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
                              .read(
                                customerRequestListControllerProvider.notifier,
                              )
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
                    Icons.store,
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
            Row(
              children: [
                IconButton(
                  onPressed: () async {
                    showCustomerDataPopup(context: context);
                  },
                  icon: const Icon(Icons.add),
                  tooltip: 'Tambah Pelanggan Baru',
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed:
                      seeCustomer
                          ? _refreshCustomerList
                          : _refreshCustomerRequestList,
                  icon: const Icon(Icons.refresh),
                  tooltip: 'Segarkan',
                ),
              ],
            ),
          ],
        )
        : Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () async {
                setState(() {
                  listViewEnabled = true;
                  focusedCustomerData = null;
                });
              },
              icon: const Icon(Icons.close),
              tooltip: 'Kembali ke Daftar Pelanggan',
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
                final requesterId = getIdFromName(
                  name: data.fields?.requestedBy?.stringValue,
                );
                final registedDate = DateFormat(
                  'd MMM yyyy',
                ).format(DateTime.parse(data.createTime ?? ''));

                return itemCard(
                  context: context,
                  icon: Icons.store,
                  title: data.fields?.companyName?.stringValue ?? '-',
                  subtitle: data.fields?.companyAddress?.stringValue ?? '-',
                  secondarySubtitle:
                      data.fields?.companyPhoneNumber?.stringValue != null
                          ? phoneNumberFormat(
                            data.fields?.companyPhoneNumber?.stringValue ?? '',
                          )
                          : null,
                  leftBottomText: ref
                      .watch(userListControllerProvider)
                      .when(
                        loading: () => 'Memuat...',
                        data: (data) {
                          return ref
                              .read(userListControllerProvider.notifier)
                              .getUserName(id: requesterId);
                        },
                        error: (error, stackTrace) {
                          ref.invalidate(userListControllerProvider);
                          return 'Gagal Memuat Nama';
                        },
                      ),
                  rightBottomText: registedDate,

                  onTap: () {
                    setState(() {
                      focusedCustomerData = data;
                      listViewEnabled = false;
                    });
                  },
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
                final requesterId = getIdFromName(
                  name: data.fields?.requestedBy?.stringValue,
                );
                final createDate = DateFormat(
                  'd MMM yyyy',
                ).format(DateTime.parse(data.createTime ?? ''));
                final status =
                    data.fields?.approvalStatus?.stringValue ?? 'Error';

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
                  leftBottomText: ref
                      .watch(userListControllerProvider)
                      .when(
                        loading: () => 'Memuat...',
                        data: (data) {
                          return ref
                              .read(userListControllerProvider.notifier)
                              .getUserName(id: requesterId);
                        },
                        error: (error, stackTrace) {
                          ref.invalidate(userListControllerProvider);
                          return 'Gagal Memuat Nama';
                        },
                      ),
                  rightBottomText:
                      createDate +
                      '\n' +
                      status[0].toUpperCase() +
                      status.substring(1),

                  onTap: () {
                    showCustomerDataPopup(
                      context: context,
                      customerData: null,
                      customerRequestData: data,
                    );
                  },
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

  Widget buildCustomerDetailView() {
    if (listViewEnabled || focusedCustomerData == null) {
      return Center(
        child: TextButton(
          child: const Text('Pelanggan Belum Dipilih'),
          onPressed: () {
            setState(() {
              listViewEnabled = true;
              focusedCustomerData = null;
            });
          },
        ),
      );
    }

    // Customer type and subscription type
    final String customerType =
        (focusedCustomerData?.fields?.customerType?.stringValue?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.customerType!.stringValue!
            : '-';
    final String subcriptionType =
        (focusedCustomerData
                    ?.fields
                    ?.subscriptionType
                    ?.stringValue
                    ?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.subscriptionType!.stringValue!
            : '-';

    // Company details
    final String storePhotoUrl =
        focusedCustomerData?.fields?.companyStorePhoto?.stringValue ?? '-';
    final String companyName =
        (focusedCustomerData?.fields?.companyName?.stringValue?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.companyName!.stringValue!
            : '-';
    final String companyEmail =
        (focusedCustomerData?.fields?.companyEmail?.stringValue?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.companyEmail!.stringValue!
            : '-';
    final String companyPhone =
        (focusedCustomerData
                    ?.fields
                    ?.companyPhoneNumber
                    ?.stringValue
                    ?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.companyPhoneNumber!.stringValue!
            : '-';
    final String companyAddress =
        (focusedCustomerData?.fields?.companyAddress?.stringValue?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.companyAddress!.stringValue!
            : '-';
    final String companyTaxId =
        (focusedCustomerData?.fields?.companyTaxId?.stringValue?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.companyTaxId!.stringValue!
            : '-';
    final String storeCondition =
        (focusedCustomerData
                    ?.fields
                    ?.companyStoreCondition
                    ?.stringValue
                    ?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.companyStoreCondition!.stringValue!
            : '-';

    // PIC details
    final String picIdPhotoUrl =
        focusedCustomerData?.fields?.companyStorePhoto?.stringValue ?? '-';
    final String picName =
        (focusedCustomerData?.fields?.picName?.stringValue?.isNotEmpty == true)
            ? focusedCustomerData!.fields!.picName!.stringValue!
            : '-';
    final String picAddress =
        (focusedCustomerData?.fields?.picAddress?.stringValue?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.picAddress!.stringValue!
            : '-';
    final String picPhone =
        (focusedCustomerData?.fields?.picPhoneNumber?.stringValue?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.picPhoneNumber!.stringValue!
            : '-';
    final String picNationalId =
        (focusedCustomerData?.fields?.picNationalId?.stringValue?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.picNationalId!.stringValue!
            : '-';
    final String picTaxId =
        (focusedCustomerData?.fields?.picTaxId?.stringValue?.isNotEmpty == true)
            ? focusedCustomerData!.fields!.picTaxId!.stringValue!
            : '-';
    final String picPosition =
        (focusedCustomerData?.fields?.picPosition?.stringValue?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.picPosition!.stringValue!
            : '-';
    final String ownershipStatus =
        (focusedCustomerData
                    ?.fields
                    ?.ownershipStatus
                    ?.stringValue
                    ?.isNotEmpty ==
                true)
            ? focusedCustomerData!.fields!.ownershipStatus!.stringValue!
            : '-';

    // Credit details
    final String creditLimit =
        focusedCustomerData?.fields?.creditLimit?.integerValue ?? '';
    final String creditPeriod =
        focusedCustomerData?.fields?.creditPeriod?.integerValue ?? '';

    // Note
    final String note =
        (focusedCustomerData?.fields?.note?.stringValue?.isNotEmpty == true)
            ? focusedCustomerData!.fields!.ownershipStatus!.stringValue!
            : '-';

    return Card(
      color: Theme.of(context).colorScheme.surface,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            // Images
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Store Photo
                    Text(
                      'Foto Toko',
                      style: sectionTitleStyle.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: ScreenUtil().screenWidth * 0.3,
                      decoration: photoBoxDecoration(context),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            storePhotoUrl,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                            loadingBuilder: (_, child, progress) {
                              if (progress == null) return child;
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                            errorBuilder:
                                (_, __, ___) =>
                                    imageErrorWidget(context: context),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Owner ID Photo
                    Text(
                      'Foto KTP Pemilik / PIC',
                      style: sectionTitleStyle.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: ScreenUtil().screenWidth * 0.3,
                      decoration: photoBoxDecoration(context),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            picIdPhotoUrl,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                            loadingBuilder: (_, child, progress) {
                              if (progress == null) return child;
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                            errorBuilder:
                                (_, __, ___) =>
                                    imageErrorWidget(context: context),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(width: 24),

            // Details
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Info Company / Store title
                          Text(
                            'Detail Perusahaan / Toko',
                            style: sectionTitleStyle.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 24,
                            thickness: 1,
                          ),
                          const SizedBox(height: 8),
                          // Customer type
                          buildDetailRow(label: 'Tipe', value: customerType),
                          const SizedBox(height: 8),

                          // Subscription type
                          buildDetailRow(
                            label: 'Jenis Langganan',
                            value: subcriptionType,
                          ),
                          const SizedBox(height: 32),

                          // Info Company / Store title
                          Text(
                            'Detail Perusahaan / Toko',
                            style: sectionTitleStyle.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 24,
                            thickness: 1,
                          ),
                          const SizedBox(height: 8),

                          // Company Name
                          buildDetailRow(label: 'Nama', value: companyName),
                          const SizedBox(height: 8),

                          // Company Email
                          buildDetailRow(label: 'Email', value: companyEmail),
                          const SizedBox(height: 8),

                          // Company Phone
                          buildDetailRow(label: 'Telepon', value: companyPhone),
                          const SizedBox(height: 8),

                          // Company Address
                          buildDetailRow(
                            label: 'Alamat',
                            value: companyAddress,
                          ),
                          const SizedBox(height: 8),

                          // Company Tax ID (NPWP)
                          buildDetailRow(label: 'NPWP', value: companyTaxId),
                          const SizedBox(height: 8),

                          // Store Condition
                          buildDetailRow(
                            label: 'Kondisi Toko',
                            value: storeCondition,
                          ),
                          const SizedBox(height: 32),

                          // Info PIC / Owner title
                          Text(
                            'Detail Pemilik / PIC',
                            style: sectionTitleStyle.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 24,
                            thickness: 1,
                          ),
                          const SizedBox(height: 8),

                          // Owner Name
                          buildDetailRow(label: 'Nama', value: picName),
                          const SizedBox(height: 8),

                          // Owner Address
                          buildDetailRow(label: 'Alamat', value: picAddress),
                          const SizedBox(height: 8),

                          // Owner Phone
                          buildDetailRow(label: 'Telepon', value: picPhone),
                          const SizedBox(height: 8),

                          // Owner National ID (KTP)
                          buildDetailRow(
                            label: 'No. KTP',
                            value: picNationalId,
                          ),
                          const SizedBox(height: 8),

                          // Owner Tax ID (NPWP)
                          buildDetailRow(label: 'NPWP', value: picTaxId),
                          const SizedBox(height: 8),

                          // Owner Position
                          buildDetailRow(label: 'Jabatan', value: picPosition),
                          const SizedBox(height: 8),

                          // Ownership Status
                          buildDetailRow(
                            label: 'Status Kepemilikan',
                            value: ownershipStatus,
                          ),
                          const SizedBox(height: 32),

                          // Payment info title
                          Text(
                            'Informasi Pembayaran',
                            style: sectionTitleStyle.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 24,
                            thickness: 1,
                          ),
                          const SizedBox(height: 8),
                          // Credit Limit
                          buildDetailRow(
                            label: 'Batas Waktu Kredit',
                            value: creditPeriod + ' hari',
                          ),
                          const SizedBox(height: 8),

                          // Credit Period
                          buildDetailRow(
                            label: 'Batas Kredit',
                            value: rupiahFormat(int.tryParse(creditLimit) ?? 0),
                          ),
                          const SizedBox(height: 32),

                          // Note title
                          Text(
                            'Catatan',
                            style: sectionTitleStyle.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 24,
                            thickness: 1,
                          ),
                          const SizedBox(height: 8),
                          // Note
                          Text(note, style: bodyStyle),
                          const SizedBox(height: 32),

                          // Note title
                          Text(
                            'Riwayat Pembelian',
                            style: sectionTitleStyle.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 24,
                            thickness: 1,
                          ),
                          const SizedBox(height: 8),
                          ...buildOrderHistoryItems(),
                          const SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ),
                  // Update button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.surface,
                          foregroundColor:
                              Theme.of(context).colorScheme.onSurface,
                        ),
                        onPressed: () {
                          setState(() {
                            listViewEnabled = true;
                            focusedCustomerData = null;
                          });
                        },
                        child: const Text('Kembali ke Daftar'),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.tertiary,
                          foregroundColor:
                              Theme.of(context).colorScheme.onTertiary,
                        ),
                        onPressed: () {
                          showCustomerDataPopup(
                            context: context,
                            customerData: focusedCustomerData,
                          );
                        },
                        child: const Text('Perbarui Data'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDetailRow({
    required String label,
    required String value,
    double labelWidth = 200,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: labelWidth,
          child: Text(
            label,
            style: bodyStyle.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: bodyStyle.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withAlpha(200),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> buildOrderHistoryItems() {
    if (focusedCustomerData == null) {
      return [
        Center(child: Text('Gagal Memuat Data Pesanan', style: bodyStyle)),
      ];
    }

    final orderListState = ref.watch(orderListControllerProvider);

    List<Widget> orderHistory = orderListState.when(
      loading: () => [Center(child: Text('Memuat', style: bodyStyle))],
      data: (orderList) {
        List<Widget> result = [];

        if (orderList == null || orderList.isEmpty) {
          return [Center(child: Text('Tidak Ada Riwayat', style: bodyStyle))];
        }

        for (OrderDomain order in orderList) {
          if (getIdFromName(name: focusedCustomerData?.name) !=
              order.fields?.customerId?.stringValue) {
            continue;
          }

          List<Value> productValueList =
              order.fields?.products?.arrayValue?.values ?? [];

          // Create product list
          List<Map<String, dynamic>> productDataList = createProductDataList(
            products: productValueList,
          );

          result.add(
            // TODO: Add order item widget
            hoverableCard(
              context: context,
              shadow: false,
              child: InkWell(
                onTap: () {
                  showOrderDataPopup(
                    ref: ref,
                    context: context,
                    orderData: order,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      (order.createTime != null && order.createTime != '')
                          ? DateFormat.yMMMMd().format(
                            DateTime.parse(order.createTime!),
                          )
                          : 'Gagal Memuat Tanggal',
                      style: bodyStyle,
                    ),
                    Text(
                      getOrderStatusText(
                        order.fields?.orderStatus?.stringValue ?? '-',
                      ),
                      style: bodyStyle,
                    ),
                  ],
                ),
              ),
            ),
          );

          result.add(SizedBox(height: 8.h));
        }

        if (result.isEmpty) {
          return [Center(child: Text('Tidak Ada Riwayat', style: bodyStyle))];
        }

        return result;
      },
      error: (error, _) {
        final exception = error as ApiException;
        return [
          Center(
            child: Text(
              'Gagal Memuat Data Pesanan: ${exception.message}',
              style: errorStyle,
            ),
          ),
        ];
      },
    );

    return orderHistory;
  }

  Future<void> showCustomerDataPopup({
    required BuildContext context,
    CustomerDomain? customerData,
    CustomerRequestDomain? customerRequestData,
  }) async {
    final customerDataFormKey = GlobalKey<FormState>();

    // Image fields
    File? companyStorePhoto;
    String? companyStorePhotoError;
    String? previousCompanyStorePhotoLink;

    File? picNationalIdPhoto;
    String? picNationalIdPhotoError;
    String? previousPicNationalIdPhotoLink;

    // Text controllers (company)
    final companyNameController = TextEditingController();
    final companyAddressController = TextEditingController();
    final companyPhoneController = TextEditingController();
    final companyEmailController = TextEditingController();
    final companyTaxIdController = TextEditingController();
    final companyStoreConditionController = TextEditingController();

    // Text controllers (PIC)
    final picNameController = TextEditingController();
    final picAddressController = TextEditingController();
    final picPhoneController = TextEditingController();
    final picNationalIdController = TextEditingController();
    final picTaxIdController = TextEditingController();
    final picPositionController = TextEditingController();
    final ownershipStatusController = TextEditingController();

    // Credit controllers
    final creditLimitController = TextEditingController();
    final creditPeriodController = TextEditingController();

    final noteController = TextEditingController();
    final approvalReasonController = TextEditingController();

    // Location data
    double latitude = 0;
    double longitude = 0;
    double accuracy = 0;

    // Dropdown selections
    String? selectedSubscriptionType;
    String? selectedCustomerType;

    // Checkbox / toggle
    bool requestNotApproved = true;
    bool isBlacklisted = false;

    List<String> customerTypes = ['', 'PKP', 'Non PKP'];
    List<String> subscriptionTypes = [
      '',
      'Toko',
      'Industri',
      'Kontraktor',
      'Partai',
      'Eceran',
      'Pribadi',
    ];
    bool dialogActionButtonEnabled = true;

    // Added in datasource
    // final requestedByController = TextEditingController();
    // final approvedByController = TextEditingController();

    // If customerData is provided, populate the fields
    if (customerData != null) {
      // Dropdown selections
      selectedCustomerType =
          customerTypes.contains(customerData.fields?.customerType?.stringValue)
              ? customerData.fields?.customerType?.stringValue
              : null;
      selectedSubscriptionType =
          subscriptionTypes.contains(
                customerData.fields?.subscriptionType?.stringValue,
              )
              ? customerData.fields?.subscriptionType?.stringValue
              : null;

      // Blacklist status
      isBlacklisted = customerData.fields?.blacklisted?.booleanValue ?? false;

      // Location data
      latitude =
          customerData
              .fields
              ?.companyLocation
              ?.mapValue
              ?.fields
              ?.latitude
              ?.doubleValue ??
          0;
      longitude =
          customerData
              .fields
              ?.companyLocation
              ?.mapValue
              ?.fields
              ?.longitude
              ?.doubleValue ??
          0;
      accuracy =
          customerData
              .fields
              ?.companyLocation
              ?.mapValue
              ?.fields
              ?.accuracy
              ?.doubleValue ??
          0;

      // Images
      previousCompanyStorePhotoLink =
          customerData.fields?.companyStorePhoto?.stringValue;

      previousPicNationalIdPhotoLink =
          customerData.fields?.picNationalIdPhoto?.stringValue;

      // Company data
      companyNameController.text =
          customerData.fields?.companyName?.stringValue ?? '';
      companyAddressController.text =
          customerData.fields?.companyAddress?.stringValue ?? '';
      companyPhoneController.text =
          customerData.fields?.companyPhoneNumber?.stringValue ?? '';
      companyEmailController.text =
          customerData.fields?.companyEmail?.stringValue ?? '';
      companyTaxIdController.text =
          customerData.fields?.companyTaxId?.stringValue ?? '';
      companyStoreConditionController.text =
          customerData.fields?.companyStoreCondition?.stringValue ?? '';

      // PIC data
      picNameController.text = customerData.fields?.picName?.stringValue ?? '';
      picAddressController.text =
          customerData.fields?.picAddress?.stringValue ?? '';
      picPhoneController.text =
          customerData.fields?.picPhoneNumber?.stringValue ?? '';
      picNationalIdController.text =
          customerData.fields?.picNationalId?.stringValue ?? '';
      picTaxIdController.text =
          customerData.fields?.picTaxId?.stringValue ?? '';
      picPositionController.text =
          customerData.fields?.picPosition?.stringValue ?? '';
      ownershipStatusController.text =
          customerData.fields?.ownershipStatus?.stringValue ?? '';

      // Credit data
      creditPeriodController.text =
          customerData.fields?.creditPeriod?.integerValue?.toString() ?? '';
      creditLimitController.text =
          customerData.fields?.creditLimit?.integerValue?.toString() ?? '';

      noteController.text = customerData.fields?.note?.stringValue ?? '';
    } else if (customerRequestData != null) {
      // Check if request already done
      requestNotApproved =
          customerRequestData.fields?.approvalStatus?.stringValue == 'pending';

      // Dropdown selections
      selectedCustomerType =
          customerTypes.contains(
                customerRequestData.fields?.customerType?.stringValue,
              )
              ? customerRequestData.fields?.customerType?.stringValue
              : null;
      selectedSubscriptionType =
          subscriptionTypes.contains(
                customerRequestData.fields?.subscriptionType?.stringValue,
              )
              ? customerRequestData.fields?.subscriptionType?.stringValue
              : null;

      // Blacklist status not set for requests
      // isBlacklisted = false;

      // Location data
      latitude =
          customerRequestData
              .fields
              ?.companyLocation
              ?.mapValue
              ?.fields
              ?.latitude
              ?.doubleValue ??
          0;
      longitude =
          customerRequestData
              .fields
              ?.companyLocation
              ?.mapValue
              ?.fields
              ?.longitude
              ?.doubleValue ??
          0;
      accuracy =
          customerRequestData
              .fields
              ?.companyLocation
              ?.mapValue
              ?.fields
              ?.accuracy
              ?.doubleValue ??
          0;

      // Images
      previousCompanyStorePhotoLink =
          customerRequestData.fields?.companyStorePhoto?.stringValue;

      previousPicNationalIdPhotoLink =
          customerRequestData.fields?.picNationalIdPhoto?.stringValue;

      // Company data
      companyNameController.text =
          customerRequestData.fields?.companyName?.stringValue ?? '';
      companyAddressController.text =
          customerRequestData.fields?.companyAddress?.stringValue ?? '';
      companyPhoneController.text =
          customerRequestData.fields?.companyPhoneNumber?.stringValue ?? '';
      companyEmailController.text =
          customerRequestData.fields?.companyEmail?.stringValue ?? '';
      companyTaxIdController.text =
          customerRequestData.fields?.companyTaxId?.stringValue ?? '';
      companyStoreConditionController.text =
          customerRequestData.fields?.companyStoreCondition?.stringValue ?? '';

      // PIC data
      picNameController.text =
          customerRequestData.fields?.picName?.stringValue ?? '';
      picAddressController.text =
          customerRequestData.fields?.picAddress?.stringValue ?? '';
      picPhoneController.text =
          customerRequestData.fields?.picPhoneNumber?.stringValue ?? '';
      picNationalIdController.text =
          customerRequestData.fields?.picNationalId?.stringValue ?? '';
      picTaxIdController.text =
          customerRequestData.fields?.picTaxId?.stringValue ?? '';
      picPositionController.text =
          customerRequestData.fields?.picPosition?.stringValue ?? '';
      ownershipStatusController.text =
          customerRequestData.fields?.ownershipStatus?.stringValue ?? '';

      // Credit data
      creditPeriodController.text =
          customerRequestData.fields?.creditPeriod?.integerValue?.toString() ??
          '';
      creditLimitController.text =
          customerRequestData.fields?.creditLimit?.integerValue?.toString() ??
          '';

      noteController.text = customerRequestData.fields?.note?.stringValue ?? '';
    }

    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (statefulBuilderContext, setDialogState) {
            Future<void> pickImage(bool isStore) async {
              // Safeguard if dialog closed
              if (statefulBuilderContext.mounted == false) return;

              // Pick image
              final result = await FilePicker.platform.pickFiles(
                type: FileType.image,
                withData: true,
              );
              if (result == null) return;
              if (result.files.single.path == null) {
                setDialogState(
                  () =>
                      isStore
                          ? companyStorePhotoError = 'Gagal membaca file'
                          : picNationalIdPhotoError = 'Gagal membaca file',
                );
                return;
              }
              // If dialog still mounted, display image
              if (statefulBuilderContext.mounted) {
                setDialogState(() {
                  isStore
                      ? companyStorePhoto = File(result.files.single.path!)
                      : picNationalIdPhoto = File(result.files.single.path!);

                  isStore
                      ? companyStorePhotoError = null
                      : picNationalIdPhotoError = null;
                });
              }
            }

            Widget buildCompanyDataExpansionTile() {
              return ExpansionTile(
                title: Text('Data Perusahaan / Toko', style: bodyStyle),
                childrenPadding: const EdgeInsets.symmetric(horizontal: 8),
                children: [
                  // Store photo
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        pickImage(true);
                      },
                      child: Container(
                        width: ScreenUtil().screenWidth * 0.3,
                        decoration: photoBoxDecoration(statefulBuilderContext),
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child:
                              companyStorePhoto != null
                                  ? ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.file(
                                      companyStorePhoto ?? File(''),
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                      errorBuilder:
                                          (_, __, ___) => imageErrorWidget(
                                            context: context,
                                          ),
                                    ),
                                  )
                                  : companyStorePhoto == null &&
                                      previousCompanyStorePhotoLink != null &&
                                      previousCompanyStorePhotoLink.isNotEmpty
                                  ? ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.network(
                                      previousCompanyStorePhotoLink,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                      loadingBuilder: (_, child, progress) {
                                        if (progress == null) return child;
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      },
                                      errorBuilder:
                                          (_, __, ___) => imageErrorWidget(
                                            context: context,
                                          ),
                                    ),
                                  )
                                  : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        size: 64,
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.outline,
                                      ),
                                      const SizedBox(height: 8),
                                      companyStorePhotoError != null
                                          ? Text(
                                            companyStorePhotoError!,
                                            style: errorStyle,
                                          )
                                          : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Klik untuk Memilih Gambar',
                                                style: captionStyle,
                                              ),
                                              Text(
                                                '(gunakan aspek 16:9 jika memungkinkan)',
                                                style: captionStyle,
                                              ),
                                            ],
                                          ),
                                    ],
                                  ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Nama perusahaan
                  buildInputBox(
                    controller: companyNameController,
                    label: 'Nama Perusahaan',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama perusahaan tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // Alamat perusahaan
                  buildInputBox(
                    controller: companyAddressController,
                    label: 'Alamat Perusahaan',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Alamat perusahaan tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // Nomor telepon perusahaan
                  buildInputBox(
                    controller: companyPhoneController,
                    label: 'Nomor Telepon Perusahaan',
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nomor telepon perusahaan tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // Email perusahaan
                  buildInputBox(
                    controller: companyEmailController,
                    label: 'Email Perusahaan',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email perusahaan tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // NPWP Perusahaan
                  selectedCustomerType == 'PKP'
                      ? buildInputBox(
                        controller: companyTaxIdController,
                        label: 'NPWP Perusahaan',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'NPWP perusahaan tidak boleh kosong';
                          }
                          return null;
                        },
                      )
                      : const SizedBox.shrink(),
                  selectedCustomerType == 'PKP'
                      ? const SizedBox(height: 12)
                      : const SizedBox.shrink(),

                  // Kondisi Toko
                  buildInputBox(
                    controller: companyStoreConditionController,
                    label: 'Kondisi Toko',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Kondisi toko tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                ],
              );
            }

            Widget buildOwnerDataExpansionTile() {
              return ExpansionTile(
                title: Text('Data Pemilik', style: bodyStyle),
                childrenPadding: const EdgeInsets.symmetric(horizontal: 8),
                children: [
                  Center(child: Text('Foto KTP Pemilik', style: captionStyle)),

                  // National ID photo
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        pickImage(false);
                      },
                      child: Container(
                        width: ScreenUtil().screenWidth * 0.3,
                        decoration: photoBoxDecoration(statefulBuilderContext),
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child:
                              picNationalIdPhoto != null
                                  ? ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.file(
                                      picNationalIdPhoto ?? File(''),
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                      errorBuilder:
                                          (_, __, ___) => imageErrorWidget(
                                            context: context,
                                          ),
                                    ),
                                  )
                                  : picNationalIdPhoto == null &&
                                      previousPicNationalIdPhotoLink != null &&
                                      previousPicNationalIdPhotoLink.isNotEmpty
                                  ? ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.network(
                                      previousPicNationalIdPhotoLink,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                      loadingBuilder: (_, child, progress) {
                                        if (progress == null) return child;
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      },
                                      errorBuilder:
                                          (_, __, ___) => imageErrorWidget(
                                            context: context,
                                          ),
                                    ),
                                  )
                                  : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        size: 64,
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.outline,
                                      ),
                                      const SizedBox(height: 8),
                                      picNationalIdPhotoError != null
                                          ? Text(
                                            picNationalIdPhotoError!,
                                            style: errorStyle,
                                          )
                                          : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Klik untuk Memilih Gambar',
                                                style: captionStyle,
                                              ),
                                              Text(
                                                '(gunakan aspek 16:9 jika memungkinkan)',
                                                style: captionStyle,
                                              ),
                                            ],
                                          ),
                                    ],
                                  ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Nama pemilik
                  buildInputBox(
                    controller: picNameController,
                    label: 'Nama Pemilik',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Tidak Boleh Kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // Alamat pemilik
                  buildInputBox(
                    controller: picAddressController,
                    label: 'Alamat Pemilik',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Tidak Boleh Kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // Nomor telepon pemilik
                  buildInputBox(
                    controller: picPhoneController,
                    label: 'Nomor Telepon Pemilik',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Tidak Boleh Kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // NIK pemilik
                  buildInputBox(
                    controller: picNationalIdController,
                    label: 'NIK Pemilik (jika ada)',
                    validator: (value) {
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // NPWP pemilik
                  buildInputBox(
                    controller: picTaxIdController,
                    label: 'NPWP Pemilik',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Tidak Boleh Kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // Ownership status
                  buildInputBox(
                    controller: ownershipStatusController,
                    label: 'Status Kepemilikan',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Tidak Boleh Kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                ],
              );
            }

            Widget buildPicDataExpansionTile() {
              return ExpansionTile(
                title: Text('Data PIC', style: bodyStyle),
                childrenPadding: const EdgeInsets.symmetric(horizontal: 8),
                children: [
                  Center(child: Text('Foto KTP PIC', style: captionStyle)),
                  Center(child: Text('(jika ada)', style: captionStyle)),

                  // National ID photo
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        pickImage(false);
                      },
                      child: Container(
                        width: ScreenUtil().screenWidth * 0.3,
                        decoration: photoBoxDecoration(statefulBuilderContext),
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child:
                              picNationalIdPhoto != null
                                  ? ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.file(
                                      picNationalIdPhoto ?? File(''),
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                      errorBuilder:
                                          (_, __, ___) => imageErrorWidget(
                                            context: context,
                                          ),
                                    ),
                                  )
                                  : picNationalIdPhoto == null &&
                                      previousPicNationalIdPhotoLink != null &&
                                      previousPicNationalIdPhotoLink.isNotEmpty
                                  ? ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.network(
                                      previousPicNationalIdPhotoLink,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                      loadingBuilder: (_, child, progress) {
                                        if (progress == null) return child;
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      },
                                      errorBuilder:
                                          (_, __, ___) => imageErrorWidget(
                                            context: context,
                                          ),
                                    ),
                                  )
                                  : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        size: 64,
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.outline,
                                      ),
                                      const SizedBox(height: 8),
                                      picNationalIdPhotoError != null
                                          ? Text(
                                            picNationalIdPhotoError!,
                                            style: errorStyle,
                                          )
                                          : Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Klik untuk Memilih Gambar',
                                                style: captionStyle,
                                              ),
                                              Text(
                                                '(gunakan aspek 16:9 jika memungkinkan)',
                                                style: captionStyle,
                                              ),
                                            ],
                                          ),
                                    ],
                                  ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // PIC Name
                  buildInputBox(
                    controller: picNameController,
                    label: 'Nama PIC',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Tidak Boleh Kosong';
                    },
                  ),
                  const SizedBox(height: 12),

                  // PIC Phone Number
                  buildInputBox(
                    controller: picPhoneController,
                    label: 'Nomor Telepon PIC',
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Tidak Boleh Kosong';
                    },
                  ),
                  const SizedBox(height: 12),

                  // PIC National ID
                  buildInputBox(
                    controller: picNationalIdController,
                    label: 'NIK PIC (jika ada)',
                    validator: (value) {
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  // PIC Position
                  buildInputBox(
                    controller: picPositionController,
                    label: 'Posisi PIC dalam Perusahaan',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Tidak Boleh Kosong';
                    },
                  ),
                  const SizedBox(height: 12),
                ],
              );
            }

            Widget buildCreditInfoExpansionTile() {
              return ExpansionTile(
                title: Text('Informasi Pembayaran', style: bodyStyle),
                children: [
                  const SizedBox(height: 4),

                  // Credit & metadata fields
                  buildInputBox(
                    controller: creditPeriodController,
                    label: 'Jangka Waktu Kredit (dalam hari)',
                    suffix: 'hari',
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Limit kredit tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),

                  buildInputBox(
                    controller: creditLimitController,
                    label: 'Batas Kredit (dalam Rp)',
                    prefix: 'Rp. ',
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Periode kredit tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                ],
              );
            }

            bool isAllRequiredDataFilled() {
              // Upper Data
              final customerTypeStatus = selectedCustomerType != null;
              final subscriptionTypeStatus = selectedSubscriptionType != null;

              final creditPeriodFilled = creditPeriodController.text != '';
              final creditLimitFilled = creditLimitController.text != '';

              // Company Data
              final storePhotoStatus =
                  companyStorePhoto != null ||
                  (previousCompanyStorePhotoLink != null &&
                      previousCompanyStorePhotoLink.isNotEmpty);
              final companyNameFilled = companyNameController.text != '';
              final companyAddressFilled = companyAddressController.text != '';
              final companyPhoneFilled = companyPhoneController.text != '';
              final companyTaxIdFilled =
                  selectedCustomerType == 'PKP'
                      ? (companyTaxIdController.text != '')
                      : true;
              final companyEmailFilled = companyEmailController.text != '';
              final storeConditionFilled =
                  companyStoreConditionController.text != '';

              // Owner/PIC Data
              bool ktpPhotoStatus;
              bool ownerAddressFilled;
              bool ownerTaxIdFilled;
              bool ownerNationalIdFilled;
              bool ownershipStatusFilled;
              bool ownerNameFilled = picNameController.text.isNotEmpty;
              bool ownerPhoneFilled = picPhoneController.text.isNotEmpty;
              bool picPositionFilled;

              // Field is not required after revision
              ktpPhotoStatus = true;
              ownerNationalIdFilled = true;

              // Owner data needed for Non PKP
              if (selectedCustomerType == 'Non PKP') {
                ownerAddressFilled = picAddressController.text.isNotEmpty;
                ownerTaxIdFilled = picTaxIdController.text.isNotEmpty;
                // ownerNationalIdFilled = _ownerNationalIdController.text.isNotEmpty;
                ownershipStatusFilled =
                    ownershipStatusController.text.isNotEmpty;
                picPositionFilled = true;
              }
              // PIC data needed for PKP
              else if (selectedCustomerType == 'PKP') {
                ownerAddressFilled = true;
                ownerTaxIdFilled = true;
                ownershipStatusFilled = true;
                picPositionFilled = picPositionController.text.isNotEmpty;
              }
              // Nullify all data if customer type is not selected
              else {
                ownerAddressFilled = false;
                ownerTaxIdFilled = false;
                ownershipStatusFilled = false;
                picPositionFilled = false;
              }

              final noteFilled = true;

              final allFlags = [
                // Upper Data
                customerTypeStatus,
                subscriptionTypeStatus,

                // Company Data
                storePhotoStatus,
                companyNameFilled,
                companyAddressFilled,
                companyPhoneFilled,
                companyTaxIdFilled,
                companyEmailFilled,
                storeConditionFilled,

                // Owner/PIC Data
                ktpPhotoStatus,
                ownerNameFilled,
                ownerAddressFilled,
                ownerPhoneFilled,
                ownerTaxIdFilled,
                ownerNationalIdFilled,
                ownershipStatusFilled,
                picPositionFilled,

                // Credit Information
                creditPeriodFilled,
                creditLimitFilled,

                // Notes
                noteFilled,
              ];

              // true only if every single flag is true
              return allFlags.every((flag) => flag);
            }

            void submitCustomerData() async {
              {
                setDialogState(() {
                  dialogActionButtonEnabled = false;
                });
                if ((customerDataFormKey.currentState?.validate() ?? false) &&
                    isAllRequiredDataFilled()) {
                  final submitState =
                      // Update customer
                      customerData != null
                          ? await ref
                              .read(updateCustomerControllerProvider.notifier)
                              .updateCustomer(
                                customerId: getIdFromName(
                                  name: customerData.name,
                                ),
                                subscriptionType:
                                    selectedSubscriptionType ?? '',
                                customerType: selectedCustomerType ?? '',

                                companyStorePhoto: companyStorePhoto,
                                companyStorePhotoUrl:
                                    previousCompanyStorePhotoLink,
                                companyName: companyNameController.text,
                                companyAddress: companyAddressController.text,
                                companyPhoneNumber: companyPhoneController.text,
                                companyEmail: companyEmailController.text,
                                companyTaxId: companyTaxIdController.text,
                                companyStoreCondition:
                                    companyStoreConditionController.text,
                                latitude: latitude,
                                longitude: longitude,
                                accuracy: accuracy,

                                picNationalIdPhoto: picNationalIdPhoto,
                                picNationalIdPhotoUrl:
                                    previousPicNationalIdPhotoLink,
                                picName: picNameController.text,
                                picAddress: picAddressController.text,
                                picPhoneNumber: picPhoneController.text,
                                picNationalId: picNationalIdController.text,
                                picTaxId: picTaxIdController.text,
                                picPosition: picPositionController.text,
                                ownershipStatus: ownershipStatusController.text,

                                creditPeriod:
                                    creditPeriodController.text.isNotEmpty
                                        ? int.parse(creditPeriodController.text)
                                        : 0,
                                creditLimit:
                                    creditLimitController.text.isNotEmpty
                                        ? int.parse(creditLimitController.text)
                                        : 0,

                                requestedBy:
                                    customerData
                                        .fields
                                        ?.requestedBy
                                        ?.stringValue ??
                                    '',
                                // Approved by current user
                                approvedBy:
                                    customerData
                                        .fields
                                        ?.approvedBy
                                        ?.stringValue ??
                                    userDataHelper?.uid ??
                                    '',
                                note: noteController.text,
                                isBlacklisted: isBlacklisted,
                              )
                          :
                          // Add using request data
                          customerRequestData != null
                          ? await ref
                              .read(updateCustomerControllerProvider.notifier)
                              .addCustomer(
                                customerRequestData: customerRequestData,
                                approvalReason: approvalReasonController.text,

                                subscriptionType:
                                    selectedSubscriptionType ?? '',
                                customerType: selectedCustomerType ?? '',

                                companyStorePhoto: companyStorePhoto,
                                companyStorePhotoUrl:
                                    previousCompanyStorePhotoLink,
                                companyName: companyNameController.text,
                                companyAddress: companyAddressController.text,
                                companyPhoneNumber: companyPhoneController.text,
                                companyEmail: companyEmailController.text,
                                companyTaxId: companyTaxIdController.text,
                                companyStoreCondition:
                                    companyStoreConditionController.text,
                                latitude: latitude,
                                longitude: longitude,
                                accuracy: accuracy,

                                picNationalIdPhoto: picNationalIdPhoto,
                                picNationalIdPhotoUrl:
                                    previousPicNationalIdPhotoLink,
                                picName: picNameController.text,
                                picAddress: picAddressController.text,
                                picPhoneNumber: picPhoneController.text,
                                picNationalId: picNationalIdController.text,
                                picTaxId: picTaxIdController.text,
                                picPosition: picPositionController.text,
                                ownershipStatus: ownershipStatusController.text,

                                creditPeriod:
                                    creditPeriodController.text.isNotEmpty
                                        ? int.parse(creditPeriodController.text)
                                        : 0,
                                creditLimit:
                                    creditLimitController.text.isNotEmpty
                                        ? int.parse(creditLimitController.text)
                                        : 0,

                                requestedBy:
                                    customerRequestData
                                        .fields
                                        ?.requestedBy
                                        ?.stringValue ??
                                    '',
                                approvedBy: userDataHelper?.uid ?? '',
                                note: noteController.text,
                                isBlacklisted: isBlacklisted,
                              )
                          // Add new
                          : await ref
                              .read(updateCustomerControllerProvider.notifier)
                              .addCustomer(
                                subscriptionType:
                                    selectedSubscriptionType ?? '',
                                customerType: selectedCustomerType ?? '',

                                companyStorePhoto: companyStorePhoto,
                                companyStorePhotoUrl:
                                    previousCompanyStorePhotoLink,
                                companyName: companyNameController.text,
                                companyAddress: companyAddressController.text,
                                companyPhoneNumber: companyPhoneController.text,
                                companyEmail: companyEmailController.text,
                                companyTaxId: companyTaxIdController.text,
                                companyStoreCondition:
                                    companyStoreConditionController.text,
                                latitude: latitude,
                                longitude: longitude,
                                accuracy: accuracy,

                                picNationalIdPhoto: picNationalIdPhoto,
                                picNationalIdPhotoUrl:
                                    previousPicNationalIdPhotoLink,
                                picName: picNameController.text,
                                picAddress: picAddressController.text,
                                picPhoneNumber: picPhoneController.text,
                                picNationalId: picNationalIdController.text,
                                picTaxId: picTaxIdController.text,
                                picPosition: picPositionController.text,
                                ownershipStatus: ownershipStatusController.text,

                                creditPeriod:
                                    creditPeriodController.text.isNotEmpty
                                        ? int.parse(creditPeriodController.text)
                                        : 0,
                                creditLimit:
                                    creditLimitController.text.isNotEmpty
                                        ? int.parse(creditLimitController.text)
                                        : 0,

                                requestedBy: '',
                                approvedBy: userDataHelper?.uid ?? '',
                                note: noteController.text,
                                isBlacklisted: isBlacklisted,
                              );
                  if (submitState is AsyncData) {
                    showFeedbackDialog(
                      context: context,
                      type: 1,
                      message:
                          customerData != null
                              ? 'Pelanggan berhasil diperbarui'
                              : customerRequestData != null
                              ? 'Permintaan pelanggan berhasil diterima'
                              : 'Pelanggan berhasil ditambahkan',
                      onClose: () {
                        _refreshCustomerList();
                        _refreshCustomerRequestList();
                        Navigator.pop(statefulBuilderContext);
                      },
                    );
                  } else if (submitState is AsyncError) {
                    final apiException = submitState.error as ApiException;
                    showFeedbackDialog(
                      context: context,
                      type: 0,
                      message:
                          customerData != null
                              ? 'Gagal memperbarui pelanggan: ${apiException.message}'
                              : customerRequestData != null
                              ? 'Gagal menerima permintaan pelanggan: ${apiException.message}'
                              : 'Gagal menambahkan pelanggan: ${apiException.message}',
                    );
                  } else {
                    showFeedbackDialog(
                      context: context,
                      type: 0,
                      message:
                          customerData != null
                              ? 'Gagal memperbarui pelanggan'
                              : customerRequestData != null
                              ? 'Gagal menerima permintaan pelanggan'
                              : 'Gagal menambahkan pelanggan',
                    );
                  }
                } else if (companyStorePhoto == null) {
                  setDialogState(() {
                    companyStorePhoto == null
                        ? companyStorePhotoError = 'Foto toko harus dipilih'
                        : companyStorePhotoError = null;
                  });
                }
                setDialogState(() {
                  dialogActionButtonEnabled = true;
                });
              }
            }

            void deleteCustomerData() async {
              showConfirmationDialog(
                context: statefulBuilderContext,
                message:
                    'Apakah Anda yakin ingin menghapus data pelanggan ini?',
                onLeftButtonTap: () {},
                onRightButtonTap: () async {
                  final deleteState = await ref
                      .read(updateCustomerControllerProvider.notifier)
                      .deleteCustomer(
                        customerId: getIdFromName(name: customerData?.name),
                      );

                  if (deleteState is AsyncData) {
                    showFeedbackDialog(
                      context: context,
                      type: 1,
                      message: 'Pelanggan berhasil dihapus',
                      onClose: () {
                        _refreshCustomerList();
                        _refreshCustomerRequestList();
                        Navigator.pop(statefulBuilderContext);
                      },
                    );
                  } else if (deleteState is AsyncError) {
                    final apiException = deleteState.error as ApiException;
                    showFeedbackDialog(
                      context: context,
                      type: 0,
                      message:
                          'Gagal menghapus pelanggan: ${apiException.message}',
                    );
                  } else {
                    showFeedbackDialog(
                      context: context,
                      type: 0,
                      message: 'Gagal menghapus pelanggan',
                    );
                  }
                },
              );
            }

            void rejectCustomerRequest() async {
              setDialogState(() {
                dialogActionButtonEnabled = false;
              });
              final rejectState = await ref
                  .read(updateCustomerControllerProvider.notifier)
                  .rejectCustomerRequest(
                    customerRequestData: customerRequestData,
                    approvalReason: approvalReasonController.text,
                  );

              if (rejectState is AsyncData) {
                showFeedbackDialog(
                  context: context,
                  type: 1,
                  message: 'Permintaan pelanggan berhasil ditolak',
                  onClose: () {
                    _refreshCustomerRequestList();
                    Navigator.pop(statefulBuilderContext);
                  },
                );
              } else if (rejectState is AsyncError) {
                final apiException = rejectState.error as ApiException;
                showFeedbackDialog(
                  context: context,
                  type: 0,
                  message:
                      'Gagal merespon permintaan pelanggan: ${apiException.message}',
                );
              } else {
                showFeedbackDialog(context: context, type: 0, message: '');
              }
            }

            return AlertDialog(
              title: Center(
                child: Text(
                  customerData == null
                      ? 'Tambah Pelanggan Baru'
                      : 'Perbarui Data Pelanggan',
                  style: subtitleStyle,
                ),
              ),
              content: SizedBox(
                width: ScreenUtil().screenWidth * 0.4,
                child: SingleChildScrollView(
                  child: Form(
                    key: customerDataFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Customer type and subscription type dropdowns
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Customer type
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: DropdownButtonFormField<String>(
                                  value: selectedCustomerType,
                                  dropdownColor:
                                      Theme.of(context).colorScheme.surface,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                  ),
                                  decoration: const InputDecoration(
                                    labelText: 'Tipe Pelanggan',
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 14,
                                    ),
                                  ),
                                  items:
                                      customerTypes.map((item) {
                                        return DropdownMenuItem<String>(
                                          value: item != '' ? item : null,
                                          child: Text(
                                            item,
                                            style: captionStyle,
                                          ),
                                        );
                                      }).toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      if (val == 'PKP') {
                                        picAddressController.text = '';
                                        picTaxIdController.text = '';
                                        ownershipStatusController.text = '';
                                      } else if (val == 'Non PKP') {
                                        companyTaxIdController.text = '';
                                        picPositionController.text = '';
                                      } else {
                                        picTaxIdController.text = '';
                                        picAddressController.text = '';
                                        ownershipStatusController.text = '';
                                        picPositionController.text = '';
                                      }
                                      selectedCustomerType = val;
                                    });
                                  },
                                  validator: (value) {
                                    return value == null
                                        ? 'Tidak Boleh Kosong'
                                        : null;
                                  },
                                ),
                              ),
                            ),

                            // Subscription type
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: DropdownButtonFormField<String>(
                                  value: selectedSubscriptionType,
                                  dropdownColor:
                                      Theme.of(context).colorScheme.surface,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                  ),
                                  decoration: const InputDecoration(
                                    labelText: 'Jenis Langganan',
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 14,
                                    ),
                                  ),
                                  items:
                                      subscriptionTypes.map((item) {
                                        return DropdownMenuItem<String>(
                                          value: item != '' ? item : null,
                                          child: Text(
                                            item,
                                            style: captionStyle,
                                          ),
                                        );
                                      }).toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      selectedSubscriptionType = val;
                                    });
                                  },
                                  validator: (value) {
                                    return value == null
                                        ? 'Tidak Boleh Kosong'
                                        : null;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),

                        // Company data
                        buildCompanyDataExpansionTile(),
                        const SizedBox(height: 24),

                        // PIC data
                        selectedCustomerType == 'PKP'
                            ? buildPicDataExpansionTile()
                            : buildOwnerDataExpansionTile(),
                        const SizedBox(height: 24),

                        // Credit and payment information
                        buildCreditInfoExpansionTile(),
                        const SizedBox(height: 24),

                        // Notes
                        buildInputBox(
                          controller: noteController,
                          label: 'Catatan',
                          maxLines: 3,
                          validator: (value) {
                            return null;
                          },
                        ),
                        const SizedBox(height: 12),

                        // Approval reason for customer request
                        customerRequestData != null
                            ? buildInputBox(
                              controller: approvalReasonController,
                              label: 'Alasan Penolakan/Penerimaan (jika ada)',
                              maxLines: 3,
                              validator: (value) {
                                return null;
                              },
                            )
                            : const SizedBox.shrink(),
                        customerRequestData != null
                            ? const SizedBox(height: 12)
                            : const SizedBox.shrink(),

                        // Blacklist status
                        SwitchListTile(
                          title: Text('Blacklist', style: bodyStyle),
                          value: isBlacklisted,
                          onChanged:
                              (value) =>
                                  setDialogState(() => isBlacklisted = value),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        customerData != null
                            ? IconButton(
                              onPressed: deleteCustomerData,
                              icon: Icon(
                                Icons.delete,
                                color: Theme.of(context).colorScheme.error,
                              ),
                            )
                            : const SizedBox.shrink(),
                        !requestNotApproved
                            ? Text(
                              'Permintaan ini sudah diterima/ditolak',
                              style: errorStyle,
                            )
                            : const SizedBox.shrink(),
                        !requestNotApproved
                            ? const SizedBox(width: 12)
                            : const SizedBox.shrink(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor:
                                Theme.of(
                                  statefulBuilderContext,
                                ).colorScheme.onSurface,
                          ),
                          onPressed:
                              dialogActionButtonEnabled
                                  ? () {
                                    Navigator.pop(statefulBuilderContext);
                                  }
                                  : null,
                          child: const Text('Tutup'),
                        ),

                        // Separator
                        customerRequestData != null && requestNotApproved
                            ? const SizedBox(width: 12)
                            : const SizedBox.shrink(),

                        // Reject button
                        customerRequestData != null && requestNotApproved
                            ? ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(
                                      statefulBuilderContext,
                                    ).colorScheme.error,
                                foregroundColor:
                                    Theme.of(
                                      statefulBuilderContext,
                                    ).colorScheme.onError,
                              ),
                              onPressed:
                                  dialogActionButtonEnabled
                                      ? rejectCustomerRequest
                                      : null,
                              child: const Text('Tolak'),
                            )
                            : const SizedBox.shrink(),

                        // Separator
                        requestNotApproved
                            ? const SizedBox(width: 12)
                            : const SizedBox.shrink(),

                        // Submit button
                        requestNotApproved
                            ? ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Theme.of(
                                      statefulBuilderContext,
                                    ).colorScheme.tertiary,
                                foregroundColor:
                                    Theme.of(
                                      statefulBuilderContext,
                                    ).colorScheme.onTertiary,
                              ),
                              onPressed:
                                  dialogActionButtonEnabled
                                      ? submitCustomerData
                                      : null,
                              child: Text(
                                customerData != null
                                    ? 'Perbarui'
                                    : customerRequestData != null
                                    ? 'Terima'
                                    : 'Tambah',
                              ),
                            )
                            : const SizedBox.shrink(),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
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
