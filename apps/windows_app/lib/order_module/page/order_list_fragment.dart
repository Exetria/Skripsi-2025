import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/order_module/domain/entities/order_domain.dart';
import 'package:windows_app/order_module/page/controller/order_list_controller.dart';
import 'package:windows_app/order_module/page/controller/update_order_controller.dart';
import 'package:windows_app/product_module/page/controller/product_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

class OrderListFragment extends StatefulHookConsumerWidget {
  const OrderListFragment({super.key});

  @override
  ConsumerState<OrderListFragment> createState() => _OrderListFragmentState();
}

class _OrderListFragmentState extends ConsumerState<OrderListFragment> {
  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () {
        ref.read(orderListControllerProvider.notifier).resetSearch();
        ref.read(customerListControllerProvider.notifier).resetSearch();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final orderListState = ref.watch(orderListControllerProvider);
    final customerListState = ref.watch(customerListControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Daftar Pesanan', style: titleStyle),
          const SizedBox(height: 10),

          _buildHeader(),
          const SizedBox(height: 12),

          Expanded(
            child: orderListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (orderList) {
                if (orderList == null || orderList.isEmpty) {
                  return Center(
                    child: Text(
                      'Data Pesanan Tidak Ditemukan',
                      style: bodyStyle,
                    ),
                  );
                }
                return LayoutBuilder(
                  builder: (context, constraints) {
                    final crossCount = getCrossAxisCount(constraints);
                    final aspectRatio = getChildAspectRatio(constraints);
                    return GridView.builder(
                      padding: const EdgeInsets.only(top: 8),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossCount,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: aspectRatio,
                      ),
                      itemCount: orderList.length,
                      itemBuilder: (context, index) {
                        final data = orderList[index];

                        final createDate = DateFormat(
                          'd MMM yyyy',
                        ).format(DateTime.parse(data.createTime ?? ''));

                        return itemCard(
                          context: context,
                          icon: Icons.receipt_long,
                          title: customerListState.when(
                            loading: () => 'Memuat...',
                            data: (customerList) {
                              return "Order ${ref.read(customerListControllerProvider.notifier).getCustomerName(id: data.fields?.customerId?.stringValue ?? '')}";
                            },
                            error: (error, stackTrace) {
                              _refreshCustomerList();
                              return 'Gagal Memuat Nama';
                            },
                          ),
                          subtitle: getIdFromName(name: data.name),
                          leftBottomText:
                              "Total: \n${rupiahFormat(int.tryParse(data.fields?.totalPrice?.integerValue ?? '') ?? 0)}",
                          rightBottomText:
                              createDate +
                              '\n' +
                              (data.fields?.orderStatus?.stringValue ??
                                  'Unknown'),
                          onTap: () {
                            showOrderDataPopup(
                              context: context,
                              orderData: data,
                            );
                          },
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
                    'Gagal Memuat Daftar Pesanan: ${exception.message}',
                    style: errorStyle,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: ScreenUtil().screenWidth * 0.25,
          child: customSearchBar(
            context: context,
            hint: 'Cari Pesanan...',
            onChanged: (query) {
              ref
                  .read(orderListControllerProvider.notifier)
                  .searchOrderByCustomer(query);
            },
          ),
        ),
        IconButton(
          onPressed: _refreshOrderList,
          icon: const Icon(Icons.refresh),
          tooltip: 'Segarkan',
        ),
      ],
    );
  }

  Future<void> showOrderDataPopup({
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
            // DEFINE FUNCTIONS HERE IF NEEDED

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
                          child: Text(
                            'Id Pesanan:\n$orderId',
                            style: bodyStyle,
                          ),
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
                                          customerListControllerProvider
                                              .notifier,
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
                      _refreshOrderList();
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
                                  child: Column(
                                    children: generateProductList(),
                                  ),
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
                    // Placeholder for additional actions if needed
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
                              dialogActionButtonEnabled
                                  ? submitOrderData
                                  : null,
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

  // PRODUCT CARD
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
          Text('Qty: $quantity', style: captionStyle),
        ],
      ),
    );
  }

  Future<void> _refreshOrderList() async {
    ref.invalidate(orderListControllerProvider);
  }

  Future<void> _refreshCustomerList() async {
    ref.invalidate(customerListControllerProvider);
  }
}
