import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailPage extends StatefulHookConsumerWidget {
  const ProductDetailPage({super.key});

  @override
  ConsumerState<ProductDetailPage> createState() => _ProductDetailPage();
}

class _ProductDetailPage extends ConsumerState<ProductDetailPage> {
  // Placeholder data - to be replaced with real data later
  final String productName = 'Nama Produk'; // <-- required
  final String imageUrl =
      'https://petapixel.com/assets/uploads/2017/03/product1.jpeg'; // <-- required
  final bool isAvailable = true;
  final String unit = 'pair';
  final String price = rupiahFormat(1000000);
  final String description =
      'This is a placeholder description of the product.'; // <-- required

  @override
  Widget build(BuildContext context) {
    final availabilityText = isAvailable ? 'Available' : 'Not Available';

    return Scaffold(
      appBar: customAppBar(title: 'Nama Produk', showLeftButton: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            SizedBox(
              height: 140.h,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                child: Image.network(
                  imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (context, error, stackTrace) => const Icon(Icons.error),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value:
                            loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 24.h),

            // Product Name
            Center(
              child: Text(
                productName,
                style: sectionTitleStyle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 12.h),

            // Unit
            Text('Unit: $unit', style: captionStyle),
            SizedBox(height: 8.h),

            // Price
            Text('Price: $price per $unit', style: captionStyle),
            SizedBox(height: 12.h),

            // Availability
            Row(
              children: [
                Icon(Icons.circle, size: 12.sp, color: successColor),
                SizedBox(width: 8.w),
                Text(
                  availabilityText,
                  style: captionStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    color: successColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),

            // Description
            Text('Description', style: subtitleStyle),
            SizedBox(height: 8.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.r),
              decoration: BoxDecoration(
                color: backgroundColor.withAlpha(20),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Text(description, style: bodyStyle),
            ),
          ],
        ),
      ),
    );
  }
}
