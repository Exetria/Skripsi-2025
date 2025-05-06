import 'package:android_app/product_module/domain/entities/product_domain.dart';
import 'package:android_app/utils/functions.dart';
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
    final variants = widget.data.fields?.variants?.arrayValue?.values ?? [];
    List<Widget> variantCards = createVariantCards(variants);

    return Scaffold(
      appBar: customAppBar(
        title: widget.data.fields?.productName?.stringValue ?? '-',
        showLeftButton: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('General Informations', style: sectionTitleStyle),
            SizedBox(height: 12.h),

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
                  Text('Brand Info', style: subtitleStyle),
                  // Brand
                  Text(
                    'Brand : ${widget.data.fields?.brand?.stringValue ?? "-"}',
                    style: bodyStyle,
                  ),
                  SizedBox(height: 8.h),

                  // Company
                  Text(
                    'Company : ${widget.data.fields?.companyCode?.stringValue ?? "-"}',
                    style: bodyStyle,
                  ),
                  SizedBox(height: 12.h),

                  // Description
                  Text('Description', style: subtitleStyle),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: backgroundColor.withAlpha(20),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Text(
                      widget.data.fields?.description?.stringValue ?? '-',
                      style: bodyStyle,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),

            Text('Variants', style: sectionTitleStyle),
            SizedBox(height: 12.h),

            // Product Variants
            ...variantCards,
          ],
        ),
      ),
    );
  }

  List<Widget> createVariantCards(List<Value> variants) {
    List<Widget> result = [];

    for (final variant in variants) {
      List<String> cardValues = [];
      List<IconData> cardIcons = [];

      // Map of attributes
      Map<String, String> variantAttributes = parseVariantAttributes(
        variant.mapValue?.fields?.attributes?.mapValue ?? {},
      );

      // Availability
      bool available =
          variant.mapValue?.fields?.available?.booleanValue ?? false;
      cardValues.add("Status: ${available ? 'Available' : 'Not Available'}");
      cardIcons.add(Icons.category);

      // Price
      cardValues.add(
        "Price: ${variant.mapValue?.fields?.price?.integerValue ?? '-'}",
      );
      cardIcons.add(Icons.donut_small);

      // Units per package
      cardValues.add(
        "Units per package: ${variant.mapValue?.fields?.unitsPerPackage?.integerValue ?? '-'}",
      );
      cardIcons.add(Icons.donut_small);

      variantAttributes.forEach((key, value) {
        cardValues.add('$key: $value');
        cardIcons.add(Icons.donut_small);
      });

      result.add(
        buildInfoCard(
          title: variant.mapValue?.fields?.variantName?.stringValue ?? '-',
          imageurl: variant.mapValue?.fields?.variantImage?.stringValue ?? '',
          values: cardValues,
          icons: cardIcons,
        ),
      );
      result.add(SizedBox(height: 8.h));
    }

    return result;
  }
}
