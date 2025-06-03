import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/product_module/page/controller/product_list_controller.dart';

// COLUMN COUNT
int getCrossAxisCount(BoxConstraints constraints) {
  final width = constraints.maxWidth;

  if (width > 2000) {
    return 5;
  } else if (width > 1500) {
    return 4;
  } else if (width > 1000) {
    return 3;
  } else if (width > 500) {
    return 2;
  } else {
    return 1;
  }
}

// GRID CHILD ASPECT RATIO
double getChildAspectRatio(BoxConstraints constraints) {
  final width = constraints.maxWidth;

  if (width > 2000) {
    return 2.2;
  } else if (width > 1000) {
    return 2.0;
  } else if (width > 700) {
    return 1.8;
  } else {
    return 1.5;
  }
}

// CUSTOM BOX DECORATION
BoxDecoration itemCardDecoration(
  BuildContext context, {
  bool isSelected = false,
  bool isHovered = false,
}) {
  final cs = Theme.of(context).colorScheme;
  return BoxDecoration(
    color: isHovered ? cs.surface.withAlpha(245) : cs.surface,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(
      color:
          isSelected
              ? cs.primary
              : (isHovered ? cs.primary.withAlpha(100) : cs.outline),
      width: 1,
    ),
    boxShadow: [
      BoxShadow(
        color: cs.shadow,
        blurRadius: isHovered ? 12 : 8,
        offset: Offset(0, isHovered ? 8 : 6),
      ),
    ],
  );
}

// ITEM CARD
Widget itemCard({
  required BuildContext context,
  required IconData icon,
  required String title,
  required String subtitle,
  String? secondarySubtitle,
  String? tertiarySubtitle,
  String? leftBottomText,
  String? rightBottomText,
  required VoidCallback? onTap,
}) {
  final cs = Theme.of(context).colorScheme;
  bool isHovered = false;

  return StatefulBuilder(
    builder: (context, setState) {
      return MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform:
              isHovered
                  ? Matrix4.translationValues(0, -6, 0)
                  : Matrix4.identity(),
          decoration: itemCardDecoration(context, isHovered: isHovered),
          padding: const EdgeInsets.all(12),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, size: 32, color: cs.primary),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: subtitleStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(subtitle, style: captionStyle),
                secondarySubtitle != null
                    ? const SizedBox(height: 4)
                    : const SizedBox.shrink(),
                secondarySubtitle != null
                    ? Text(secondarySubtitle, style: captionStyle)
                    : const SizedBox.shrink(),
                tertiarySubtitle != null
                    ? const SizedBox(height: 4)
                    : const SizedBox.shrink(),
                tertiarySubtitle != null
                    ? Text(tertiarySubtitle, style: captionStyle)
                    : const SizedBox.shrink(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    leftBottomText != null
                        ? Text(leftBottomText, style: bodyStyle)
                        : const SizedBox.shrink(),

                    rightBottomText != null
                        ? Text(rightBottomText, style: bodyStyle)
                        : const SizedBox.shrink(),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

// CUSTOMER SELECTOR POPUP
Future<String?> showCustomerSelectorPopup({
  required WidgetRef ref,
  required BuildContext context,
}) async {
  ref.read(customerListControllerProvider.notifier).resetSearch();
  return showDialog<String>(
    context: context,
    builder: (context) {
      return Consumer(
        builder: (context, ref, _) {
          return AlertDialog(
            title: Row(
              children: [
                Expanded(
                  child: customSearchBar(
                    context: context,
                    hint: 'Cari Pelanggan...',
                    onChanged: (query) {
                      ref
                          .read(customerListControllerProvider.notifier)
                          .searchCustomer(query);
                    },
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  tooltip: 'Segarkan Daftar Pelanggan',
                  onPressed: () {
                    ref.invalidate(customerListControllerProvider);
                  },
                ),
              ],
            ),
            content: SizedBox(
              width: ScreenUtil().screenWidth * 0.2,
              height: ScreenUtil().screenHeight * 0.3,
              child: ref
                  .watch(customerListControllerProvider)
                  .when(
                    loading:
                        () => const Center(child: CircularProgressIndicator()),
                    data: (productList) {
                      if (productList == null || productList.isEmpty) {
                        return const Center(
                          child: Text('Data Pelanggan Tidak Ditemukan'),
                        );
                      }

                      return ListView.separated(
                        itemCount: productList.length,
                        separatorBuilder:
                            (context, index) => const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final data = productList[index];
                          bool isHovered = false;

                          return StatefulBuilder(
                            builder: (context, setState) {
                              return MouseRegion(
                                onEnter:
                                    (_) => setState(() => isHovered = true),
                                onExit:
                                    (_) => setState(() => isHovered = false),
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  transform:
                                      isHovered
                                          ? Matrix4.translationValues(0, -4, 0)
                                          : Matrix4.identity(),
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    // Give a slightly different fill color so the border shows
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    border: Border.all(
                                      // Use a contrasting color (e.g., onSurface) and make it a bit thicker
                                      color:
                                          isHovered
                                              ? Theme.of(
                                                context,
                                              ).colorScheme.primary
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                                  .withOpacity(0.5),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: InkWell(
                                    onTap:
                                        () => Navigator.pop(
                                          context,
                                          getIdFromName(name: data.name),
                                        ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          data
                                                  .fields
                                                  ?.companyName
                                                  ?.stringValue ??
                                              '-',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
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
                          'Gagal Memuat Data Pelanggan: ${exception.message}',
                          style: errorStyle,
                        ),
                      );
                    },
                  ),
            ),
          );
        },
      );
    },
  );
}

// PRODUCT SELECTOR POPUP
Future<String?> showProductSelectorPopup({
  required WidgetRef ref,
  required BuildContext context,
}) async {
  ref.read(productListControllerProvider.notifier).resetSearch();
  return showDialog<String>(
    context: context,
    builder: (context) {
      return Consumer(
        builder: (context, ref, _) {
          return AlertDialog(
            title: Row(
              children: [
                Expanded(
                  child: customSearchBar(
                    context: context,
                    hint: 'Cari Produk...',
                    onChanged: (query) {
                      ref
                          .read(productListControllerProvider.notifier)
                          .searchProduct(query);
                    },
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  tooltip: 'Segarkan Daftar Pelanggan',
                  onPressed: () {
                    ref.invalidate(productListControllerProvider);
                  },
                ),
              ],
            ),
            content: SizedBox(
              width: ScreenUtil().screenWidth * 0.2,
              height: ScreenUtil().screenHeight * 0.3,
              child: ref
                  .watch(productListControllerProvider)
                  .when(
                    loading:
                        () => const Center(child: CircularProgressIndicator()),
                    data: (productList) {
                      if (productList == null || productList.isEmpty) {
                        return const Center(
                          child: Text('Data Produk Tidak Ditemukan'),
                        );
                      }

                      return ListView.separated(
                        itemCount: productList.length,
                        separatorBuilder:
                            (context, index) => const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final data = productList[index];
                          bool isHovered = false;

                          return StatefulBuilder(
                            builder: (context, setState) {
                              return MouseRegion(
                                onEnter:
                                    (_) => setState(() => isHovered = true),
                                onExit:
                                    (_) => setState(() => isHovered = false),
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  transform:
                                      isHovered
                                          ? Matrix4.translationValues(0, -4, 0)
                                          : Matrix4.identity(),
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    // Give a slightly different fill color so the border shows
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    border: Border.all(
                                      // Use a contrasting color (e.g., onSurface) and make it a bit thicker
                                      color:
                                          isHovered
                                              ? Theme.of(
                                                context,
                                              ).colorScheme.primary
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                                  .withOpacity(0.5),
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: InkWell(
                                    onTap:
                                        () => Navigator.pop(
                                          context,
                                          getIdFromName(name: data.name),
                                        ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          data
                                                  .fields
                                                  ?.productName
                                                  ?.stringValue ??
                                              '-',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
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
                          'Gagal Memuat Data Produk: ${exception.message}',
                          style: errorStyle,
                        ),
                      );
                    },
                  ),
            ),
          );
        },
      );
    },
  );
}
