import 'package:android_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:android_app/order_module/domain/entities/order_domain.dart';
import 'package:android_app/order_module/page/controller/order_list_controller.dart';
import 'package:android_app/order_module/page/controller/update_order_controller.dart';
import 'package:android_app/product_module/domain/entities/product_domain.dart';
import 'package:android_app/product_module/page/controller/product_list_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class OrderDetailPage extends StatefulHookConsumerWidget {
  OrderDomain orderData;
  List<Map<String, dynamic>> productDataList;

  OrderDetailPage({
    super.key,
    required this.orderData,
    required this.productDataList,
  });

  @override
  ConsumerState<OrderDetailPage> createState() => _OrderDetailPage();
}

class _OrderDetailPage extends ConsumerState<OrderDetailPage> {
  late List<Map<String, dynamic>> _productDataList;

  String? _paymentMethod;
  int total = 0;
  bool _submitButtonEnabled = true;

  final _notesController = TextEditingController();

  late bool _editable;

  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () {
        ref.read(productListControllerProvider.notifier).resetSearch();
        ref.read(customerListControllerProvider.notifier).resetSearch();
      },
    );
    _editable = widget.orderData.fields?.orderStatus?.stringValue == 'pending';
    _productDataList = List.from(widget.productDataList);
    _paymentMethod = widget.orderData.fields?.paymentMethod?.stringValue;
    _notesController.text = widget.orderData.fields?.notes?.stringValue ?? '';
  }

  @override
  void dispose() {
    _notesController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customerListState = ref.watch(customerListControllerProvider);

    String displayedOrderStatus = getOrderStatusText(
      orderStatus: widget.orderData.fields?.orderStatus?.stringValue ?? '',
    );

    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: customerListState.when(
          loading: () => 'Memuat...',
          data: (data) {
            return ref
                .read(customerListControllerProvider.notifier)
                .getCustomerName(
                  id: widget.orderData.fields?.customerId?.stringValue ?? '',
                );
          },
          error: (error, stackTrace) {
            ref.invalidate(customerListControllerProvider);
            return 'Gagal Memuat Nama';
          },
        ),
        subtitle:
            (widget.orderData.createTime != null &&
                    widget.orderData.createTime != '')
                ? DateFormat.yMMMMd().format(
                  DateTime.parse(widget.orderData.createTime!),
                )
                : 'Gagal Memuat Tanggal',
        showLeftButton: true,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Order Data
            infoCard(
              context: context,
              title: 'Informasi Order',
              values: [
                'ID Order:\n${getIdFromName(name: widget.orderData.name)}',
                'Status Order:\n$displayedOrderStatus',
                // "Total:\n${rupiahFormat(int.tryParse(widget.orderData.fields?.totalPrice?.integerValue ?? '') ?? 0)}",
              ],
              icons: [Icons.donut_small, Icons.donut_small],
            ),
            SizedBox(height: 16.h),

            // Payment method
            DropdownButtonFormField<String>(
              value: _paymentMethod,
              dropdownColor: Theme.of(context).colorScheme.surface,
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              decoration: InputDecoration(
                labelText: 'Metode Pembayaran',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 14.h,
                ),
              ),
              items:
                  ['', 'Cash', 'Transfer'].map((item) {
                    return DropdownMenuItem<String>(
                      value: item != '' ? item : null,
                      child: Text(item, style: captionStyle),
                    );
                  }).toList(),
              onChanged:
                  _editable
                      ? (val) {
                        setState(() {
                          _paymentMethod = val;
                        });
                      }
                      : null,
              validator: (value) {
                return value == null ? 'Tidak Boleh Kosong' : null;
              },
            ),
            SizedBox(height: 16.h),

            // Notes
            TextFormField(
              enabled: _editable,
              controller: _notesController,
              decoration: const InputDecoration(labelText: 'Catatan'),
            ),
            SizedBox(height: 24.h),

            // Ordered products
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Daftar Produk', style: sectionTitleStyle),
                GestureDetector(
                  onTap:
                      _editable
                          ? () async {
                            // Add product
                            String? newProductId =
                                await showProductSelectorPopup();
                            String? productPrice = await ref
                                .read(productListControllerProvider.notifier)
                                .getProductPrice(id: newProductId ?? '');

                            for (var productData in _productDataList) {
                              String? productId =
                                  productData['mapValue']['fields']['product_id']['stringValue'];

                              if (productId == newProductId) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Produk Sudah Ada'),
                                    behavior: SnackBarBehavior.floating,
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                                return;
                              }
                            }

                            if (newProductId != null && mounted) {
                              setState(() {
                                // discount_amount added later
                                // discount_percentage added later
                                _productDataList.add({
                                  'mapValue': {
                                    'fields': {
                                      'product_id': {
                                        'stringValue': newProductId,
                                      },
                                      'quantity': {'integerValue': '1'},
                                      'unit_price': {
                                        'integerValue': productPrice,
                                      },
                                      'total_price': {
                                        'integerValue': productPrice,
                                      },
                                    },
                                  },
                                });
                              });
                            }

                            ref
                                .read(productListControllerProvider.notifier)
                                .getProductPrice(id: newProductId ?? '');
                          }
                          : null,
                  child:
                      _editable
                          ? Container(
                            padding: EdgeInsets.all(8.r),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          )
                          : const SizedBox.shrink(),
                ),
              ],
            ),
            SizedBox(height: 12.h),

            // Product list
            ...generateProductList(),
            SizedBox(height: 12.h),

            // Total
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Total: ${rupiahFormat(total)}', style: bodyStyle),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _submitButtonEnabled
                ? ElevatedButton(
                  onPressed: _editable && _submitButtonEnabled ? _submit : null,
                  child: Text(
                    _editable ? 'Konfirmasi' : 'Tidak Dapat Diubah',
                    style: buttonStyle.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                )
                : const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }

  List<Widget> generateProductList() {
    final productListState = ref.watch(productListControllerProvider);
    List<Widget> cards = [];
    int newTotal = 0;

    for (int index = 0; index < _productDataList.length; index++) {
      final productData = _productDataList[index];

      String? productId =
          productData['mapValue']['fields']['product_id']['stringValue'];
      String? quantity =
          productData['mapValue']['fields']['quantity']['integerValue'];
      String? productTotalPrice =
          productData['mapValue']['fields']['total_price']['integerValue'];

      newTotal += int.tryParse(productTotalPrice ?? '') ?? 0;

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
          editable: _editable,
          onTap: () async {
            await showProductDataPopup(
              context: context,
              productListState: productListState,
              productData: productData,
            );

            if (mounted) {
              setState(() {});
            }
          },
          onDelete: () {
            // Check if the product list length is 1
            if (_productDataList.length == 1) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Tidak bisa menghapus produk terakhir'),
                  behavior: SnackBarBehavior.floating,
                  duration: Duration(seconds: 2),
                ),
              );
            }
            // Remove product
            else if (_productDataList.length > 1) {
              setState(() {
                _productDataList.removeAt(index);
              });
            }
          },
        ),
      );

      cards.add(SizedBox(height: 4.h));
    }

    setState(() {
      total = newTotal;
    });

    return cards;
  }

  Future<String?> showProductSelectorPopup() async {
    ref.read(productListControllerProvider.notifier).resetSearch();
    return showDialog<String>(
      context: context,
      builder: (context) {
        return Consumer(
          builder: (context, ref, _) {
            return AlertDialog(
              title: customSearchBar(
                context: context,
                hint: 'Cari Produk...',
                onChanged: (query) {
                  ref
                      .read(productListControllerProvider.notifier)
                      .searchProduct(query);
                },
              ),
              content: SizedBox(
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().screenHeight / 2,
                child: ref
                    .watch(productListControllerProvider)
                    .when(
                      loading:
                          () =>
                              const Center(child: CircularProgressIndicator()),
                      data: (productList) {
                        if (productList == null || productList.isEmpty) {
                          return refreshableInfoWidget(
                            refreshFunction: _refreshProductList,
                            content: const Text('Data Produk Tidak Ditemukan'),
                          );
                        }

                        return RefreshIndicator(
                          onRefresh: _refreshProductList,
                          child: ListView.separated(
                            itemCount: productList.length,
                            separatorBuilder:
                                (context, index) => SizedBox(height: 4.h),
                            itemBuilder: (context, index) {
                              final data = productList[index];

                              return customSelectorListItem(
                                context: context,
                                title:
                                    data.fields?.productName?.stringValue ??
                                    '-',
                                subtitle:
                                    data.fields?.brand?.stringValue ?? '-',
                                trailIcon: Icons.arrow_forward_ios,
                                onTap:
                                    () => Navigator.pop(
                                      context,
                                      getIdFromName(name: data.name),
                                    ),
                              );
                            },
                          ),
                        );
                      },
                      error: (error, _) {
                        final exception = error as ApiException;

                        return refreshableInfoWidget(
                          refreshFunction: _refreshProductList,
                          content: Text(
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

  Future<void> showProductDataPopup({
    required BuildContext context,
    required AsyncValue<List<ProductDomain>?> productListState,
    required Map<String, dynamic> productData,
  }) async {
    // Get previous datas
    String? productId =
        productData['mapValue']?['fields']?['product_id']?['stringValue']
            as String?;
    String? quantity =
        productData['mapValue']?['fields']?['quantity']?['integerValue']
            as String?;
    String? unitPrice =
        productData['mapValue']?['fields']?['unit_price']?['integerValue']
            as String?;
    String? totalPrice =
        productData['mapValue']?['fields']?['total_price']?['integerValue']
            as String?;
    String? discountAmount =
        productData['mapValue']?['fields']?['discount_amount']?['integerValue']
            as String?;
    String? discountPercentage =
        productData['mapValue']?['fields']?['discount_percentage']?['doubleValue']
            as String?;

    final TextEditingController quantityController = TextEditingController();
    quantityController.text = quantity ?? '1';
    final TextEditingController discountController = TextEditingController();
    discountController.text = discountAmount ?? discountPercentage ?? '0';

    num newTotalPrice = int.tryParse(totalPrice ?? '') ?? 0;
    num newDiscountedPrice = int.tryParse(totalPrice ?? '') ?? 0;

    bool discountType = discountAmount != null;
    String? discountErrorText;

    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              actionsAlignment: MainAxisAlignment.spaceBetween,
              title: Text(
                productListState.when(
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
                style: subtitleStyle,
              ),
              content: SizedBox(
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().screenHeight / 2,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Price per item
                      Text(
                        "Price per pcs: \n${rupiahFormat(int.tryParse(unitPrice ?? '') ?? 0)}",
                        style: bodyStyle,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                      SizedBox(height: 24.h),

                      // Quantity
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: quantityController,
                              decoration: const InputDecoration(
                                labelText: 'Quantity',
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              onChanged: (value) {
                                setState(() {
                                  // Calculate new total price
                                  newTotalPrice =
                                      (int.tryParse(value) ?? 0) *
                                      (int.tryParse(unitPrice ?? '') ?? 0);

                                  // Calculate new discounted price
                                  if (discountType) {
                                    newDiscountedPrice =
                                        newTotalPrice -
                                        (int.tryParse(
                                              discountController.text,
                                            ) ??
                                            0);
                                  } else {
                                    newDiscountedPrice =
                                        newTotalPrice -
                                        ((newTotalPrice *
                                                (int.tryParse(
                                                      discountController.text,
                                                    ) ??
                                                    0)) /
                                            100);
                                  }
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 24.w),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('X', style: bodyStyle),
                                Text('Pcs', style: bodyStyle),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),

                      // Discount
                      Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: TextField(
                              controller: discountController,
                              decoration: InputDecoration(
                                labelText: 'Discount',
                                prefixText: discountType ? 'Rp. ' : null,
                                errorText: discountErrorText,
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters:
                                  // True = rp
                                  // False = percentage
                                  discountType
                                      ? [FilteringTextInputFormatter.digitsOnly]
                                      : [
                                        FilteringTextInputFormatter.allow(
                                          RegExp(r'^\d*\.?\d*'),
                                        ),
                                      ],
                              onChanged: (value) {
                                setState(() {
                                  // Calculate new total price
                                  newTotalPrice =
                                      (int.tryParse(quantityController.text) ??
                                          0) *
                                      (int.tryParse(unitPrice ?? '') ?? 0);
                                });
                                if (discountType &&
                                        ((int.tryParse(value) ?? 0) < 0) ||
                                    ((int.tryParse(value) ?? 0) >
                                        newTotalPrice)) {
                                  setState(() {
                                    discountErrorText =
                                        'Discount amount must be between 0 and $newTotalPrice';
                                  });
                                  return;
                                } else if (!discountType &&
                                    (int.tryParse(value) ?? 0) > 100) {
                                  setState(() {
                                    discountErrorText =
                                        'Discount amount must be between 0 and 100';
                                  });
                                  return;
                                } else {
                                  setState(() {
                                    discountErrorText = null;
                                  });
                                }

                                setState(() {
                                  // Calculate new discounted price
                                  if (discountType) {
                                    newDiscountedPrice =
                                        newTotalPrice -
                                        (int.tryParse(value) ?? 0);
                                  } else {
                                    newDiscountedPrice =
                                        newTotalPrice -
                                        ((newTotalPrice *
                                                (int.tryParse(value) ?? 0)) /
                                            100);
                                  }
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            flex: 4,
                            child: ElevatedButton(
                              child: Text(
                                discountType ? 'Rp.' : '%',
                                style: bodyStyle,
                              ),
                              onPressed: () {
                                setState(() {
                                  // Reset discount controller
                                  discountController.clear();
                                  discountErrorText = null;
                                  discountType = !discountType;
                                });
                              },
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 24.h),

                      Text(
                        'Total: \n${rupiahFormat(newDiscountedPrice)}',
                        style: bodyStyle,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Batal', style: captionStyle),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Update quantity
                    productData['mapValue']['fields']['quantity'] = {
                      'integerValue':
                          quantityController.text != ''
                              ? quantityController.text
                              : '0',
                    };

                    // Update total price
                    productData['mapValue']['fields']['total_price'] = {
                      'integerValue': newDiscountedPrice.toInt().toString(),
                    };

                    // Update discount
                    if (discountType) {
                      productData['mapValue']['fields'].remove(
                        'discount_percentage',
                      );
                      productData['mapValue']['fields']['discount_amount'] = {
                        'integerValue':
                            discountController.text != ''
                                ? discountController.text
                                : '0',
                      };
                    } else {
                      productData['mapValue']['fields'].remove(
                        'discount_amount',
                      );
                      productData['mapValue']['fields']['discount_percentage'] =
                          {
                            'doubleValue':
                                discountController.text != ''
                                    ? discountController.text
                                    : '0',
                          };
                    }
                    Navigator.pop(context);
                  },
                  child: Text('OK', style: captionStyle),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Future<void> _refreshProductList() async {
    ref.invalidate(productListControllerProvider);
  }

  void _submit() async {
    setState(() {
      _submitButtonEnabled = false;
    });
    if (_editable &&
        _paymentMethod?.isNotEmpty == true &&
        _productDataList.isNotEmpty) {
      // Submit new visit data
      AsyncValue<OrderDomain?> result = await ref
          .read(updateOrderControllerProvider.notifier)
          .updateOrder(
            oldData: widget.orderData,
            paymentMethod: _paymentMethod ?? '',
            notes: _notesController.text,
            productDataList: _productDataList,
          );

      if (result.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Gagal Memperbarui Pesanan'),
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 2),
          ),
        );
      } else {
        // Refresh visit list
        ref.invalidate(orderListControllerProvider);

        Navigator.pop(context);
      }
    } else if (_editable && _productDataList.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please add at least 1 product'),
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Tidak Dapat Diubah'),
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 2),
        ),
      );
    }
    setState(() {
      _submitButtonEnabled = true;
    });
  }
}
