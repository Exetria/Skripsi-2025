import 'package:android_app/customer_module/domain/entities/customer_domain.dart';
import 'package:android_app/order_module/domain/entities/order_domain.dart';
import 'package:android_app/order_module/page/controller/order_list_controller.dart';
import 'package:android_app/order_module/page/order_detail_page.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class CustomerDetailPage extends StatefulHookConsumerWidget {
  final CustomerDomain data;

  const CustomerDetailPage({super.key, required this.data});

  @override
  ConsumerState<CustomerDetailPage> createState() => _CustomerDetailPage();
}

class _CustomerDetailPage extends ConsumerState<CustomerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Detail Pelanggan',
        showLeftButton: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Customer Image
            Center(
              child: SizedBox(
                height: 200.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      widget.data.fields?.companyStorePhoto?.stringValue ?? '',
                      width: double.infinity,
                      fit: BoxFit.cover,
                      loadingBuilder: (_, child, progress) {
                        if (progress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                      errorBuilder:
                          (_, __, ___) => imageErrorWidget(context: context),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h),

            // Info Card with name inside
            infoCard(
              context: context,
              title: 'Data Toko/Perusahaan',
              values: [
                widget.data.fields?.companyName?.stringValue ?? '-',
                widget.data.fields?.companyAddress?.stringValue ?? '-',
                phoneNumberFormat(
                  widget.data.fields?.companyPhoneNumber?.stringValue ?? '',
                ),
              ],
              icons: [
                Icons.store_outlined,
                Icons.location_on_outlined,
                Icons.phone_outlined,
              ],
            ),
            SizedBox(height: 12.h),

            infoCard(
              context: context,
              title: 'Data Pemilik',
              values: [
                widget.data.fields?.picName?.stringValue ?? '-',
                phoneNumberFormat(
                  widget.data.fields?.picPhoneNumber?.stringValue ?? '',
                ),
              ],
              icons: [Icons.person_outline, Icons.phone_outlined],
            ),
            SizedBox(height: 12.h),

            infoCard(
              context: context,
              title: 'Data Lainnya',
              values: [
                widget.data.fields?.customerType?.stringValue ?? '-',
                widget.data.fields?.ownershipStatus?.stringValue ?? '-',
                widget.data.fields?.subscriptionType?.stringValue ?? '-',
              ],
              icons: [
                Icons.badge_outlined,
                Icons.assignment_ind_outlined,
                Icons.subscriptions_outlined,
              ],
            ),
            SizedBox(height: 12.h),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.r),
              decoration: androidBoxDecoration(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Catatan', style: sectionTitleStyle),
                  SizedBox(height: 8.h),

                  Text(
                    widget.data.fields?.note?.stringValue?.isNotEmpty ?? false
                        ? widget.data.fields?.note?.stringValue ?? '-'
                        : 'Tidak ada catatan',
                    style: bodyStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),

            buildOrderHistoryCard(),
          ],
        ),
      ),
    );
  }

  Widget buildOrderHistoryCard() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.r),
      decoration: androidBoxDecoration(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Riwayat Pembelian', style: sectionTitleStyle),
          SizedBox(height: 8.h),

          ...buildOrderHistoryItems(),
        ],
      ),
    );
  }

  List<Widget> buildOrderHistoryItems() {
    final orderListState = ref.watch(orderListControllerProvider);

    List<Widget> orderHistory = orderListState.when(
      loading: () => [Center(child: Text('Memuat', style: bodyStyle))],
      data: (orderList) {
        List<Widget> result = [];

        if (orderList == null || orderList.isEmpty) {
          return [Center(child: Text('Tidak Ada Riwayat', style: bodyStyle))];
        }

        for (OrderDomain data in orderList) {
          if (getIdFromName(name: widget.data.name) !=
              data.fields?.customerId?.stringValue) {
            continue;
          }

          List<Value> productValueList =
              data.fields?.products?.arrayValue?.values ?? [];

          // Create product list
          List<Map<String, dynamic>> productDataList = createProductDataList(
            products: productValueList,
          );

          result.add(
            customListItem(
              context: context,
              leadIcon: Icons.shopping_cart,
              title: '',
              subtitle:
                  (data.createTime != null && data.createTime != '')
                      ? DateFormat.yMMMMd().format(
                        DateTime.parse(data.createTime!),
                      )
                      : 'Gagal Memuat Tanggal',
              bodyText: getOrderStatusText(
                orderStatus: data.fields?.orderStatus?.stringValue,
              ),
              bodyColor: getOrderStatusColor(
                context: context,
                orderStatus: data.fields?.orderStatus?.stringValue,
              ),
              trailIcon: Icons.arrow_forward_ios,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => OrderDetailPage(
                          orderData: data,
                          productDataList: productDataList,
                        ),
                  ),
                );
              },
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
}
