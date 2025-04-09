import 'package:android_app/variables.dart';
import 'package:android_app/widgets.dart';
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
  final String price = rupiahFormatter.format(1000000);
  final String description =
      'This is a placeholder description of the product.'; // <-- required

  @override
  Widget build(BuildContext context) {
    final availabilityText = isAvailable ? 'Available' : 'Not Available';
    final availabilityColor = isAvailable ? Colors.green : Colors.red;

    return Scaffold(
      appBar: customAppBar(title: 'Nama Produk', showBackButton: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 140.h,
              child: Expanded(
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
            ),
            const SizedBox(height: 24),

            // Product Name
            Center(
              child: Text(
                productName,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Unit
            Text('Unit: $unit', style: captionStyle),
            const SizedBox(height: 8),

            // Price
            Text('Price: $price per $unit', style: captionStyle),
            const SizedBox(height: 12),

            // Availability
            Row(
              children: [
                Icon(Icons.circle, size: 12, color: availabilityColor),
                const SizedBox(width: 8),
                Text(
                  availabilityText,
                  style: TextStyle(
                    color: availabilityColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Description
            Text('Description', style: subtitleStyle),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
