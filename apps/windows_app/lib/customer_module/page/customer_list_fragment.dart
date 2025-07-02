import 'package:common_components/common_components.dart';
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
import 'package:windows_app/utils/popups.dart';

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
                  tooltip: 'Tampilkan Pendaftaran Pelanggan',
                ),
                const SizedBox(width: 12),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () async {
                    showCustomerDataPopup(
                      ref: ref,
                      context: context,
                      onclose: () {
                        setState(() {
                          listViewEnabled = true;
                          focusedCustomerData = null;
                        });
                      },
                    );
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
                      ref: ref,
                      context: context,
                      customerData: null,
                      customerRequestData: data,
                      onclose: () {
                        setState(() {
                          listViewEnabled = true;
                          focusedCustomerData = null;
                        });
                      },
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
    // Customer Id
    final String customerId =
        (focusedCustomerData?.name?.isNotEmpty == true)
            ? getIdFromName(name: focusedCustomerData!.name!)
            : '-';

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
    final bool blacklisted =
        focusedCustomerData?.fields?.blacklisted?.booleanValue ?? false;

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
        focusedCustomerData?.fields?.picNationalIdPhoto?.stringValue ?? '-';
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

    // Location coordinates
    final double companyLatitude =
        focusedCustomerData
            ?.fields
            ?.companyLocation
            ?.mapValue
            ?.fields
            ?.latitude
            ?.doubleValue ??
        0.0;
    final double companyLongitude =
        focusedCustomerData
            ?.fields
            ?.companyLocation
            ?.mapValue
            ?.fields
            ?.longitude
            ?.doubleValue ??
        0.0;

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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Detail Perusahaan / Toko',
                                style: sectionTitleStyle.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                              ),
                              IconButton(
                                onPressed: () async {
                                  final String googleMapsUri =
                                      generateGoogleMapsUri(
                                        latitude: companyLatitude,
                                        longitude: companyLongitude,
                                      );

                                  await Clipboard.setData(
                                    ClipboardData(text: googleMapsUri),
                                  );

                                  // Optional: give user feedback
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Link Google Maps telah disalin',
                                        style: bodyStyle,
                                      ),
                                    ),
                                  );
                                },
                                icon: const Icon(Icons.map),
                                tooltip: 'Copy Link Maps',
                              ),
                            ],
                          ),

                          const Divider(
                            color: Colors.grey,
                            height: 24,
                            thickness: 1,
                          ),
                          const SizedBox(height: 8),
                          // Customer id
                          buildDetailRow(label: 'ID', value: customerId),
                          const SizedBox(height: 8),

                          // Customer type
                          buildDetailRow(label: 'Tipe', value: customerType),
                          const SizedBox(height: 8),

                          // Subscription type
                          buildDetailRow(
                            label: 'Jenis Langganan',
                            value: subcriptionType,
                          ),
                          const SizedBox(height: 8),

                          buildDetailRow(
                            label: 'Masuk Blacklist',
                            value: blacklisted ? 'Ya' : 'Tidak',
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

                          // Ownership Status
                          buildDetailRow(
                            label: 'Status Kepemilikan',
                            value: ownershipStatus,
                          ),
                          const SizedBox(height: 8),

                          // PIC Position
                          buildDetailRow(label: 'Jabatan', value: picPosition),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.error,
                              foregroundColor:
                                  Theme.of(context).colorScheme.onError,
                            ),
                            onPressed: () {
                              // DELETE CUSTOMER
                              deleteCustomerData(
                                customerId: getIdFromName(
                                  name: focusedCustomerData?.name,
                                ),
                              );
                            },
                            child: const Text('Hapus Pelanggan'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.tertiary,
                              foregroundColor:
                                  Theme.of(context).colorScheme.onTertiary,
                            ),
                            onPressed: () {
                              showCustomerDataPopup(
                                ref: ref,
                                context: context,
                                customerData: focusedCustomerData,
                                onclose: () {
                                  setState(() {
                                    listViewEnabled = true;
                                    focusedCustomerData = null;
                                  });
                                },
                              );
                            },
                            child: const Text('Perbarui Data'),
                          ),
                          const SizedBox(width: 8),
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
                        ],
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

  void deleteCustomerData({required String customerId}) async {
    showConfirmationDialog(
      context: context,
      message: 'Apakah Anda yakin ingin menghapus data pelanggan ini?',
      onLeftButtonTap: () {},
      onRightButtonTap: () async {
        final deleteState = await ref
            .read(updateCustomerControllerProvider.notifier)
            .deleteCustomer(customerId: customerId);

        if (deleteState is AsyncData) {
          showFeedbackDialog(
            context: context,
            type: 1,
            message: 'Pelanggan berhasil dihapus',
            onClose: () {
              ref.invalidate(customerListControllerProvider);
              ref.invalidate(customerRequestListControllerProvider);
              setState(() {
                focusedCustomerData = null;
                listViewEnabled = true;
              });
            },
          );
        } else if (deleteState is AsyncError) {
          final apiException = deleteState.error as ApiException;
          showFeedbackDialog(
            context: context,
            type: 0,
            message: 'Gagal menghapus pelanggan: ${apiException.message}',
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

  Future<void> _refreshCustomerRequestList() async {
    ref.invalidate(customerRequestListControllerProvider);
  }

  Future<void> _refreshCustomerList() async {
    ref.invalidate(customerListControllerProvider);
  }
}
