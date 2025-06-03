import 'package:android_app/customer_module/domain/entities/customer_domain.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
          ],
        ),
      ),
    );
  }
}
