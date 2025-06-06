import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/order_module/domain/entities/order_domain.dart';
import 'package:windows_app/order_module/page/controller/order_list_controller.dart';
import 'package:windows_app/order_module/page/controller/update_order_controller.dart';
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
  bool shadow = true,
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
    boxShadow:
        shadow
            ? [
              BoxShadow(
                color: cs.shadow,
                blurRadius: isHovered ? 12 : 8,
                offset: Offset(0, isHovered ? 8 : 6),
              ),
            ]
            : null,
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

  return hoverableCard(
    context: context,
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
  );
}

// HOVERABLE ITEM CARD
Widget hoverableCard({
  required BuildContext context,
  bool shadow = true,
  required Widget child,
}) {
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
          decoration: itemCardDecoration(
            context,
            isHovered: isHovered,
            shadow: shadow,
          ),
          padding: const EdgeInsets.all(12),
          child: child,
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
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    border: Border.all(
                                      color:
                                          isHovered
                                              ? Theme.of(
                                                context,
                                              ).colorScheme.primary
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                                  .withAlpha(128),
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
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                    border: Border.all(
                                      color:
                                          isHovered
                                              ? Theme.of(
                                                context,
                                              ).colorScheme.primary
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                                  .withAlpha(128),
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

// CREATE PRODUCT DATA LIST
List<Map<String, dynamic>> createProductDataList({
  required List<Value> products,
}) {
  List<Map<String, dynamic>> result = [];
  for (var product in products) {
    Map<String, dynamic> newMap = {
      'mapValue': {
        'fields': {
          'product_id': {
            'stringValue':
                product.mapValue?.fields?.productId?.stringValue ?? '',
          },
          'quantity': {
            'integerValue':
                product.mapValue?.fields?.quantity?.integerValue ?? '0',
          },
          'unit_price': {
            'integerValue':
                product.mapValue?.fields?.unitPrice?.integerValue ?? '',
          },
          'total_price': {
            'integerValue':
                product.mapValue?.fields?.totalPrice?.integerValue ?? '',
          },
        },
      },
    };

    // Add discount fields conditionally (fixed amount or percentage)
    if (product.mapValue?.fields?.discountAmount?.integerValue != null) {
      newMap['mapValue']['fields']['discount_amount'] = {
        'integerValue':
            product.mapValue?.fields?.discountAmount?.integerValue ?? '0',
      };
    } else if (product.mapValue?.fields?.discountPercentage?.doubleValue !=
        null) {
      newMap['mapValue']['fields']['discount_percentage'] = {
        'doubleValue':
            product.mapValue?.fields?.discountPercentage?.doubleValue
                .toString() ??
            '0',
      };
    }

    // Add product data to list
    result.add(newMap);
  }
  return result;
}

// SHOW ORDER DATA POPUP
Future<void> showOrderDataPopup({
  required WidgetRef ref,
  required BuildContext context,
  required OrderDomain orderData,
}) async {
  List<String> orderStatuses = [
    '',
    'pending',
    'processed',
    'in_transit',
    'delivered',
    'finished',
    'cancelled',
  ];

  String orderId = getIdFromName(name: orderData.name);
  String customerId = orderData.fields?.customerId?.stringValue ?? '';
  String paymentMethod = orderData.fields?.paymentMethod?.stringValue ?? '';
  String notes = orderData.fields?.notes?.stringValue ?? '';

  String deliveryDate = orderData.fields?.deliveryDate?.timestampValue ?? '';
  String paymentDate = orderData.fields?.paymentDate?.timestampValue ?? '';

  int total =
      int.tryParse(orderData.fields?.totalPrice?.integerValue ?? '') ?? 0;
  List<Map<String, dynamic>> productDataList = createProductDataList(
    products: orderData.fields?.products?.arrayValue?.values ?? [],
  );

  String? selectedOrderStatus =
      orderStatuses.contains(orderData.fields?.orderStatus?.stringValue)
          ? orderData.fields?.orderStatus?.stringValue
          : null;

  bool dialogActionButtonEnabled = true;

  await showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (statefulBuilderContext, setDialogState) {
          Widget buildOrderInfoCard() {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text('Detail Pesanan', style: subtitleStyle),
                  const SizedBox(height: 12),

                  // Order id
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.perm_identity,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text('Id Pesanan:\n$orderId', style: bodyStyle),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Customer name
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.perm_identity,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          ref
                              .watch(customerListControllerProvider)
                              .when(
                                loading: () => 'Memuat...',
                                data: (data) {
                                  final customerName = ref
                                      .read(
                                        customerListControllerProvider.notifier,
                                      )
                                      .getCustomerName(id: customerId);
                                  return 'Pelanggan Tujuan:\n$customerName';
                                },
                                error: (error, stackTrace) {
                                  ref.invalidate(
                                    customerListControllerProvider,
                                  );
                                  return 'Gagal Memuat Nama';
                                },
                              ),
                          style: bodyStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Payment method
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.payment,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Metode Pembayaran:\n$paymentMethod',
                          style: bodyStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Total price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.attach_money,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Total Harga:\n${rupiahFormat(total)}',
                          style: bodyStyle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Notes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.note,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text('Catatan:\n$notes', style: bodyStyle),
                      ),
                    ],
                  ),
                  deliveryDate.isNotEmpty
                      ? const SizedBox(height: 12)
                      : const SizedBox.shrink(),

                  // Delivery date
                  deliveryDate.isNotEmpty
                      ? Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_shipping,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Tanggal pengiriman:\n${DateFormat('d MMM yyyy').format(DateTime.parse(deliveryDate))}',
                              style: bodyStyle,
                            ),
                          ),
                        ],
                      )
                      : const SizedBox.shrink(),
                  paymentDate.isNotEmpty
                      ? const SizedBox(height: 12)
                      : const SizedBox.shrink(),

                  // Payment date
                  paymentDate.isNotEmpty
                      ? Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.request_quote,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Tanggal pembayaran:\n${DateFormat('d MMM yyyy').format(DateTime.parse(paymentDate))}',
                              style: bodyStyle,
                            ),
                          ),
                        ],
                      )
                      : const SizedBox.shrink(),
                ],
              ),
            );
          }

          List<Widget> generateProductList() {
            final productListState = ref.watch(productListControllerProvider);
            List<Widget> cards = [];
            // int newTotal = 0;

            for (int index = 0; index < productDataList.length; index++) {
              final productData = productDataList[index];

              String? productId =
                  productData['mapValue']['fields']['product_id']['stringValue'];
              String? quantity =
                  productData['mapValue']['fields']['quantity']['integerValue'];
              String? productTotalPrice =
                  productData['mapValue']['fields']['total_price']['integerValue'];

              // newTotal += int.tryParse(productTotalPrice ?? '') ?? 0;

              cards.add(
                productCard(
                  context: context,
                  productName: productListState.when(
                    loading: () => 'Memuat...',
                    data: (data) {
                      return ref
                          .read(productListControllerProvider.notifier)
                          .getProductName(id: productId ?? '');
                    },
                    error: (error, stackTrace) {
                      ref.invalidate(customerListControllerProvider);
                      return 'Gagal Memuat Nama';
                    },
                  ),
                  quantity: quantity ?? '-',
                  price: int.tryParse(productTotalPrice ?? '') ?? 0,
                  onTap: () {
                    // Handle product tap if needed
                  },
                  onDelete: () {},
                ),
              );

              cards.add(SizedBox(height: 4.h));
            }

            // setDialogState(() {
            //   total = newTotal;
            // });

            return cards;
          }

          void submitOrderData() async {
            setDialogState(() {
              dialogActionButtonEnabled = false;
            });

            if (productDataList.isNotEmpty && selectedOrderStatus != null) {
              final submitState = await ref
                  .read(updateOrderControllerProvider.notifier)
                  .updateOrder(
                    oldData: orderData,
                    notes: notes,
                    paymentMethod: paymentMethod,
                    orderStatus: selectedOrderStatus ?? '',
                    deliveryDate: deliveryDate,
                    paymentDate: paymentDate,
                    productDataList: productDataList,
                  );

              if (submitState is AsyncData) {
                showFeedbackDialog(
                  context: context,
                  type: 1,
                  message: 'Status pesanan berhasil diperbarui',
                  onClose: () {
                    ref.invalidate(orderListControllerProvider);
                    Navigator.pop(statefulBuilderContext);
                  },
                );
              } else if (submitState is AsyncError) {
                final apiException = submitState.error as ApiException;
                showFeedbackDialog(
                  context: context,
                  type: 0,
                  message:
                      'Gagal memperbarui status pesanan: ${apiException.message}',
                );
              } else {
                showFeedbackDialog(
                  context: context,
                  type: 0,
                  message: 'Gagal memperbarui status pesanan',
                );
              }
            }

            setDialogState(() {
              dialogActionButtonEnabled = true;
            });
          }

          return AlertDialog(
            title: Center(child: Text('Data Pesanan', style: subtitleStyle)),
            content: SizedBox(
              width: ScreenUtil().screenWidth * 0.4,
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      buildOrderInfoCard(),
                      const SizedBox(height: 16),
                      DropdownButtonFormField<String>(
                        value: selectedOrderStatus,
                        dropdownColor: Theme.of(context).colorScheme.surface,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        decoration: const InputDecoration(
                          labelText: 'Status Pesanan',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 14,
                          ),
                        ),
                        items:
                            orderStatuses.map((item) {
                              return DropdownMenuItem<String>(
                                value: item != '' ? item : null,
                                child: Text(item, style: captionStyle),
                              );
                            }).toList(),
                        onChanged: (val) {
                          setDialogState(() {
                            selectedOrderStatus = val;
                          });
                        },
                        validator: (value) {
                          return value == null ? 'Tidak Boleh Kosong' : null;
                        },
                      ),
                      const SizedBox(height: 32),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                Theme.of(
                                  statefulBuilderContext,
                                ).colorScheme.outline,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Produk yang Dipesan', style: bodyStyle),
                              ],
                            ),
                            const SizedBox(height: 8),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: ScreenUtil().screenHeight * 0.05,
                                maxHeight: ScreenUtil().screenHeight * 0.3,
                              ),
                              child: SingleChildScrollView(
                                child: Column(children: generateProductList()),
                              ),
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.onSurface,
                        ),
                        onPressed:
                            dialogActionButtonEnabled
                                ? () {
                                  Navigator.pop(statefulBuilderContext);
                                }
                                : null,
                        child: const Text('Tutup'),
                      ),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.tertiary,
                          foregroundColor:
                              Theme.of(
                                statefulBuilderContext,
                              ).colorScheme.onTertiary,
                        ),
                        onPressed:
                            dialogActionButtonEnabled ? submitOrderData : null,
                        child: const Text('Perbarui'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      );
    },
  );
}

// PRODUCT CARD FOR ORDER DATA POPUP
Widget productCard({
  required BuildContext context,
  required String productName,
  required String quantity,
  required num price,
  required VoidCallback onTap,
  required VoidCallback onDelete,
  bool editable = true,
}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.surface,
      border: Border.all(
        color: Theme.of(context).colorScheme.outline,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Item name and quantity
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(productName, style: bodyStyle),
            SizedBox(height: 4.h),
            Text(rupiahFormat(price), style: bodyStyle),
          ],
        ),

        // Item total price & delete button
        Text('Jumlah: $quantity', style: captionStyle),
      ],
    ),
  );
}

// GET ORDER STATUS TEXT
String getOrderStatusText(String orderStatus) {
  if (orderStatus == 'pending') {
    return 'Menunggu Konfirmasi';
  } else if (orderStatus == 'processed') {
    return 'Dikonfirmasi Admin';
  } else if (orderStatus == 'in_transit') {
    return 'Sedang Dikirim';
  } else if (orderStatus == 'delivered') {
    return 'Sudah Diterima';
  } else if (orderStatus == 'finished') {
    return 'Selesai';
  } else if (orderStatus == 'cancelled') {
    return 'Dibatalkan';
  } else {
    return 'Tidak Tersedia';
  }
}
