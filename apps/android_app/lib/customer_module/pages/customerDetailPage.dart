import 'package:android_app/variables.dart';
import 'package:android_app/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerDetailPage extends StatefulHookConsumerWidget {
  const CustomerDetailPage({super.key});

  @override
  ConsumerState<CustomerDetailPage> createState() => _CustomerDetailPage();
}

class _CustomerDetailPage extends ConsumerState<CustomerDetailPage> {
  @override
  Widget build(BuildContext context) {
    // Placeholder data - to be replaced with real values later
    final String imageUrl =
        'https://petapixel.com/assets/uploads/2017/03/product1.jpeg'; // <-- required
    final String customerName = 'PT Aneka Barang'; // <-- required
    final String address = '123 Main Street'; // <-- required
    final String city = 'Springfield'; // <-- required
    final String phoneNumber = '+1 555 123 4567'; // <-- required

    return Scaffold(
      appBar: customAppBar(title: 'Customer Detail', showBackButton: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Customer Image
            ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  imageUrl,
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
            SizedBox(height: 24.h),

            // Info Card with name inside
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: backgroundColor,
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
                  // Name
                  Text(customerName, style: sectionTitleStyle),
                  SizedBox(height: 16.h),

                  // Address
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 20.sp,
                        color: primaryColor,
                      ),
                      SizedBox(width: 8.w),
                      Expanded(child: Text(address, style: bodyStyle)),
                    ],
                  ),
                  SizedBox(height: 12.h),

                  // City
                  Row(
                    children: [
                      Icon(
                        Icons.location_city_outlined,
                        size: 20.sp,
                        color: primaryColor,
                      ),
                      SizedBox(width: 8.w),
                      Text(city, style: bodyStyle),
                    ],
                  ),
                  SizedBox(height: 12.h),

                  // Phone
                  Row(
                    children: [
                      Icon(
                        Icons.phone_outlined,
                        size: 20.sp,
                        color: primaryColor,
                      ),
                      SizedBox(width: 8.w),
                      Text(phoneNumber, style: bodyStyle),
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
}
