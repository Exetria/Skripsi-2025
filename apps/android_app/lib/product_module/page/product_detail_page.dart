import 'package:android_app/product_module/domain/entities/product_domain.dart';
import 'package:android_app/utils/functions.dart';
import 'package:android_app/utils/widget_settings.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailPage extends StatefulHookConsumerWidget {
  final ProductDomain data;

  const ProductDetailPage({super.key, required this.data});

  @override
  ConsumerState<ProductDetailPage> createState() => _ProductDetailPage();
}

class _ProductDetailPage extends ConsumerState<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> attributes =
        widget.data.fields?.attributes?.mapValue?.fields ?? {};

    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Detail Produk',
        // title: widget.data.fields?.productName?.stringValue ?? '-',
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
                      widget.data.fields?.productImage?.stringValue ?? '',
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
            SizedBox(height: 12.h),

            infoCard(
              context: context,
              title: 'Informasi Merek',
              values: [
                'Merk : ${widget.data.fields?.brand?.stringValue ?? "-"}',
                // TODO: Check if need to delete
                'Perusahaan : ${widget.data.fields?.companyCode?.stringValue ?? "-"}',
              ],
              icons: [Icons.donut_small, Icons.donut_small],
            ),
            SizedBox(height: 12.h),

            createAttributeCard(attributes),
            SizedBox(height: 12.h),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.r),
              decoration: regularBoxDecoration(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Description
                  Text('Deskripsi', style: subtitleStyle),
                  SizedBox(height: 8.h),

                  Text(
                    widget.data.fields?.description?.stringValue ?? '-',
                    style: bodyStyle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),

            // ...variantCards,
          ],
        ),
      ),
    );
  }

  Widget createAttributeCard(Map<String, dynamic> attributes) {
    List<String> cardValues = [];
    List<IconData> cardIcons = [];

    final attributeData = parseVariantAttributes(attributes);

    attributeData.forEach((key, value) {
      cardValues.add('$key: $value');
      cardIcons.add(Icons.donut_small);
    });

    return infoCard(
      context: context,
      title: 'Atribut Produk',
      values: cardValues,
      icons: cardIcons,
    );
  }

  // Parse map of map of str:str to map of str:str
  Map<String, String> parseVariantAttributes(
    Map<String, dynamic> attributesMap,
  ) {
    return {
      for (final entry in attributesMap.entries)
        if (entry.value is Map<String, dynamic> && entry.value.isNotEmpty)
          entry.key: entry.value.values.first.toString(),
    };
  }
}
