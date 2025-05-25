import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/product_module/page/controller/product_list_controller.dart';
import 'package:windows_app/product_module/page/controller/update_product_controller.dart';
import 'package:windows_app/utils/functions.dart';

class ProductListFragment extends StatefulHookConsumerWidget {
  const ProductListFragment({super.key});

  @override
  ConsumerState<ProductListFragment> createState() => _ProductListFragment();
}

class _ProductListFragment extends ConsumerState<ProductListFragment> {
  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () {
        ref.read(productListControllerProvider.notifier).resetSearch();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final productListState = ref.watch(productListControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Daftar Produk', style: titleStyle),
          const SizedBox(height: 10),

          buildHeader(),
          const SizedBox(height: 12),

          Expanded(
            child: productListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (customerList) {
                if (customerList == null || customerList.isEmpty) {
                  return Center(
                    child: Text(
                      'Data Produk Tidak Ditemukan',
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
                      itemCount: customerList.length,
                      itemBuilder: (context, index) {
                        final data = customerList[index];
                        return itemCard(
                          context: context,
                          icon: Icons.inventory_2,
                          title: data.fields?.productName?.stringValue ?? '-',
                          subtitle: getIdFromName(name: data.name),
                          bottomText:
                              "Price per pcs: \n${rupiahFormat(int.tryParse(data.fields?.price?.integerValue ?? '') ?? 0)}",
                          onTap: () {},
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
                    'Gagal Memuat Daftar Produk: ${exception.message}',
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

  Widget buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: ScreenUtil().screenWidth * 0.25,
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
        Row(
          children: [
            IconButton(
              onPressed: () async {
                showAddProductPopup(context: context);
              },
              icon: const Icon(Icons.add),
              tooltip: 'Tambah Produk Baru',
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: _refreshProductList,
              icon: const Icon(Icons.refresh),
              tooltip: 'Segarkan',
            ),
          ],
        ),
      ],
    );
  }

  Future<void> showAddProductPopup({required BuildContext context}) async {
    final addProductFormKey = GlobalKey<FormState>();

    final productNameController = TextEditingController();
    final brandController = TextEditingController();
    final companyCodeController = TextEditingController();
    final descriptionController = TextEditingController();
    final priceController = TextEditingController();
    final unitsController = TextEditingController();

    final attributeNameController = TextEditingController();
    final attributeValueController = TextEditingController();

    bool available = true;
    bool dialogActionButtonEnabled = true;
    File? productImage;
    String? imageError;
    Map<String, String> attributes = {};

    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (statefulBuilderContext, setDialogState) {
            Future<void> pickImage() async {
              // Safeguard if dialog closed
              if (statefulBuilderContext.mounted == false) return;

              // Pick image
              final result = await FilePicker.platform.pickFiles(
                type: FileType.image,
                withData: true,
              );
              if (result == null) return;
              if (result.files.single.path == null) {
                setDialogState(() => imageError = 'Gagal membaca file');
                return;
              }
              // If dialog still mounted, display image
              if (statefulBuilderContext.mounted) {
                setDialogState(() {
                  productImage = File(result.files.single.path ?? '');
                  imageError = null;
                });
              }
            }

            void submitNewProductData() async {
              {
                setDialogState(() {
                  dialogActionButtonEnabled = false;
                });
                if ((addProductFormKey.currentState?.validate() ?? false) &&
                    productImage != null) {
                  final submitState = await ref
                      .read(updateProductControllerProvider.notifier)
                      .addProduct(
                        productImage: productImage,
                        productName: productNameController.text,
                        brand: brandController.text,
                        companyCode: companyCodeController.text,
                        productPrice: int.tryParse(priceController.text) ?? 0,
                        unitPerPackage: int.tryParse(priceController.text) ?? 0,
                        description: descriptionController.text,
                        available: available,
                        attributes: attributes,
                      );

                  if (submitState is AsyncData) {
                    showFeedbackDialog(
                      context: context,
                      type: 1,
                      message: 'Produk Berhasi Ditambahkan',
                      onClose: () {
                        Navigator.pop(statefulBuilderContext);
                      },
                    );
                  } else if (submitState is AsyncError) {
                    final apiException = submitState.error as ApiException;
                    showFeedbackDialog(
                      context: context,
                      type: 0,
                      message: apiException.message,
                    );
                  } else {
                    showFeedbackDialog(
                      context: context,
                      type: 0,
                      message: 'Gagal Menambahkan Produk',
                    );
                  }
                } else if (productImage == null) {
                  setDialogState(() {
                    imageError = 'Gambar produk harus dipilih';
                  });
                }
                setDialogState(() {
                  dialogActionButtonEnabled = true;
                });
              }
            }

            return AlertDialog(
              title: Text('Tambah Produk Baru', style: subtitleStyle),
              content: SizedBox(
                width: ScreenUtil().screenWidth * 0.4,
                child: SingleChildScrollView(
                  child: Form(
                    key: addProductFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Product image
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              pickImage();
                            },
                            child: Container(
                              width: ScreenUtil().screenWidth * 0.3,
                              decoration: photoBoxDecoration(
                                statefulBuilderContext,
                              ),
                              child: AspectRatio(
                                aspectRatio: 16 / 9,
                                child:
                                    productImage != null
                                        ? ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            16.r,
                                          ),
                                          child: Image.file(
                                            productImage ?? File(''),
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: double.infinity,
                                          ),
                                        )
                                        : Center(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.camera_alt_outlined,
                                                size: 32.sp,
                                                color: dividerColor,
                                              ),
                                              SizedBox(height: 8.h),
                                              Center(
                                                child:
                                                    imageError != null
                                                        ? Text(
                                                          imageError!,
                                                          style: errorStyle,
                                                        )
                                                        : Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Klik untuk Memilih Gambar',
                                                              style:
                                                                  captionStyle,
                                                            ),
                                                            Text(
                                                              '(gunakan aspek 16:9 jika memungkinkan)',
                                                              style:
                                                                  captionStyle,
                                                            ),
                                                          ],
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Product Name
                        TextFormField(
                          controller: productNameController,
                          decoration: const InputDecoration(
                            labelText: 'Nama Produk',
                          ),
                          style: bodyStyle,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Nama produk tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12),

                        // Brand
                        TextFormField(
                          controller: brandController,
                          decoration: const InputDecoration(labelText: 'Merk'),
                          style: bodyStyle,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Merk produk tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12),

                        // Company Code

                        // Company Code
                        TextFormField(
                          controller: companyCodeController,
                          decoration: const InputDecoration(
                            labelText: 'Perusahaan',
                          ),
                          style: bodyStyle,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Perusahaan tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12),

                        // Price
                        TextFormField(
                          controller: priceController,
                          decoration: const InputDecoration(
                            labelText: 'Harga per pcs',
                            prefixText: 'Rp. ',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          style: bodyStyle,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Harga produk tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12),

                        // Units per package
                        TextFormField(
                          controller: unitsController,
                          decoration: const InputDecoration(
                            labelText: 'Jumlah per pak',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          style: bodyStyle,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Jumlah per pak tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12),

                        // Description (optional)
                        TextFormField(
                          controller: descriptionController,
                          decoration: const InputDecoration(
                            labelText: 'Deskripsi',
                          ),
                          style: bodyStyle,
                          maxLines: 3,
                          validator: (value) {
                            return null;
                          },
                        ),
                        const SizedBox(height: 12),

                        // TODO: Improve UI
                        // Attributes
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
                              Text('Atribut (opsional)', style: bodyStyle),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: attributeNameController,
                                      decoration: const InputDecoration(
                                        labelText: 'Nama Atribut',
                                      ),
                                      style: bodyStyle,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: TextField(
                                      controller: attributeValueController,
                                      decoration: const InputDecoration(
                                        labelText: 'Isi Atribut',
                                      ),
                                      style: bodyStyle,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  IconButton(
                                    onPressed: () {
                                      final key = attributeNameController.text;
                                      final value =
                                          attributeValueController.text;

                                      if (key.isNotEmpty && value.isNotEmpty) {
                                        setDialogState(() {
                                          attributes[key] = value;
                                          attributeNameController.clear();
                                          attributeValueController.clear();
                                        });
                                      }
                                    },
                                    icon: const Icon(Icons.add),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: ScreenUtil().screenHeight * 0.05,
                                  maxHeight: ScreenUtil().screenHeight * 0.3,
                                ),
                                child:
                                    attributes.isNotEmpty
                                        ? ListView.separated(
                                          itemCount: attributes.length,
                                          separatorBuilder:
                                              (context, index) => Divider(
                                                color:
                                                    Theme.of(
                                                      context,
                                                    ).colorScheme.onSurface,
                                                thickness: 1,
                                                height: 1,
                                              ),
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              title: Text(
                                                attributes.keys.elementAt(
                                                  index,
                                                ),
                                              ),
                                              subtitle: Text(
                                                attributes.values.elementAt(
                                                  index,
                                                ),
                                              ),
                                              trailing: IconButton(
                                                icon: const Icon(Icons.delete),
                                                onPressed: () {
                                                  setDialogState(() {
                                                    attributes.remove(
                                                      attributes.keys.elementAt(
                                                        index,
                                                      ),
                                                    );
                                                  });
                                                },
                                              ),
                                            );
                                          },
                                        )
                                        : Center(
                                          child: Text(
                                            'Tidak ada atribut yang ditambahkan',
                                            style: captionStyle,
                                          ),
                                        ),
                              ),
                              const SizedBox(height: 12),
                            ],
                          ),
                        ),

                        // Available switch
                        SwitchListTile(
                          title: Text('Tersedia', style: bodyStyle),
                          value: available,
                          onChanged:
                              (value) =>
                                  setDialogState(() => available = value),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              actionsAlignment: MainAxisAlignment.end,
              actions: [
                TextButton(
                  onPressed:
                      dialogActionButtonEnabled
                          ? () {
                            Navigator.pop(statefulBuilderContext);
                          }
                          : null,
                  child: Text('Batal', style: captionStyle),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Theme.of(statefulBuilderContext).colorScheme.primary,
                    foregroundColor:
                        Theme.of(statefulBuilderContext).colorScheme.onPrimary,
                    textStyle: buttonStyle,
                  ),
                  onPressed:
                      dialogActionButtonEnabled ? submitNewProductData : null,
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
}
