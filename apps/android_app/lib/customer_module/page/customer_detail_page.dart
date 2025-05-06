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
        title: widget.data.fields?.companyName?.stringValue ?? '-',
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
                      errorBuilder:
                          (_, __, ___) => Container(
                            color: dividerColor,
                            child: Icon(
                              Icons.error,
                              color: errorColor,
                              size: 40.sp,
                            ),
                          ),
                      loadingBuilder: (_, child, progress) {
                        if (progress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value:
                                progress.expectedTotalBytes != null
                                    ? progress.cumulativeBytesLoaded /
                                        progress.expectedTotalBytes!
                                    : null,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h),

            // Info Card with name inside
            buildInfoCard(
              title: 'Company Data',
              values: [
                widget.data.fields?.companyName?.stringValue ?? '-',
                widget.data.fields?.companyAddress?.stringValue ?? '-',
                phoneNumberFormat(
                  widget.data.fields?.companyPhoneNumber?.stringValue ?? '',
                ),
              ],
              icons: [
                Icons.business_outlined,
                Icons.location_on_outlined,
                Icons.phone_outlined,
              ],
            ),
            SizedBox(height: 24.h),

            buildInfoCard(
              title: 'Owner Data',
              values: [
                widget.data.fields?.ownerName?.stringValue ?? '-',
                phoneNumberFormat(
                  widget.data.fields?.ownerPhoneNumber?.stringValue ?? '',
                ),
              ],
              icons: [Icons.person_outline, Icons.phone_outlined],
            ),
            SizedBox(height: 24.h),

            buildInfoCard(
              title: 'Other Data',
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
            SizedBox(height: 24.h),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: fillColor,
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: dividerColor),
                boxShadow: [
                  BoxShadow(
                    color: dividerColor,
                    blurRadius: 8,
                    offset: Offset(0, 6.h),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Note', style: sectionTitleStyle),
                  SizedBox(height: 8.h),

                  Text(
                    widget.data.fields?.note?.stringValue ?? 'No Note',
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
