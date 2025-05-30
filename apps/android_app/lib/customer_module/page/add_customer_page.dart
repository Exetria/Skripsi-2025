// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:android_app/customer_module/page/controller/create_customer_request_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:android_app/utils/widget_settings.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddCustomerPage extends StatefulHookConsumerWidget {
  const AddCustomerPage({super.key});

  @override
  ConsumerState<AddCustomerPage> createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends ConsumerState<AddCustomerPage> {
  final _formKey = GlobalKey<FormState>();

  final _requestDestinationController = TextEditingController();
  final _carbonCopyController = TextEditingController();

  // Company Data
  final _companyNameController = TextEditingController();
  final _companyAddressController = TextEditingController();
  final _companyPhoneController = TextEditingController();
  final _companyTaxIdController = TextEditingController();
  final _companyEmailController = TextEditingController();
  final _storeConditionController = TextEditingController();

  // Owner Data
  final _ownerNameController = TextEditingController();
  final _ownerAddressController = TextEditingController();
  final _ownerPhoneController = TextEditingController();
  final _ownerTaxIdController = TextEditingController();
  final _ownerNationalIdController = TextEditingController();
  final _ownershipStatusController = TextEditingController();
  final _picPositionController = TextEditingController();

  // Credit Information
  final _creditPeriodController = TextEditingController();
  final _creditLimitController = TextEditingController();

  // Notes
  final _notesController = TextEditingController();

  File? _storePhoto;
  File? _ktpPhoto;
  String? _customerType;
  String? _subscriptionType;
  bool _submitButtonEnabled = true;
  bool _pickStorePhotoEnabled = true;
  bool _pickOwnerIdPhotoEnabled = true;

  @override
  void dispose() {
    _requestDestinationController.dispose();
    _carbonCopyController.dispose();
    _companyNameController.dispose();
    _companyAddressController.dispose();
    _companyPhoneController.dispose();
    _companyTaxIdController.dispose();
    _companyEmailController.dispose();
    _storeConditionController.dispose();
    _ownerNameController.dispose();
    _ownerAddressController.dispose();
    _ownerPhoneController.dispose();
    _ownerTaxIdController.dispose();
    _ownerNationalIdController.dispose();
    _ownershipStatusController.dispose();
    _picPositionController.dispose();
    _creditPeriodController.dispose();
    _creditLimitController.dispose();
    _notesController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Form Pelanggan',
        showLeftButton: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.r),
                      child: DropdownButtonFormField<String>(
                        value: _customerType,
                        dropdownColor: Theme.of(context).colorScheme.surface,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Tipe Pelanggan',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 14.h,
                          ),
                        ),
                        items:
                            ['', 'PKP', 'Non PKP'].map((item) {
                              return DropdownMenuItem<String>(
                                value: item != '' ? item : null,
                                child: Text(item, style: captionStyle),
                              );
                            }).toList(),
                        onChanged: (val) {
                          setState(() {
                            if (val == 'PKP') {
                              _ownerTaxIdController.text = '';
                              _ownerAddressController.text = '';
                              _ownershipStatusController.text = '';
                            } else if (val == 'Non PKP') {
                              _companyTaxIdController.text = '';
                              _picPositionController.text = '';
                            } else {
                              _ownerTaxIdController.text = '';
                              _ownerAddressController.text = '';
                              _ownershipStatusController.text = '';
                              _picPositionController.text = '';
                            }
                            _customerType = val;
                          });
                        },
                        validator: (value) {
                          return value == null ? 'Tidak Boleh Kosong' : null;
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.r),
                      child: DropdownButtonFormField<String>(
                        value: _subscriptionType,
                        dropdownColor: Theme.of(context).colorScheme.surface,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Jenis Langganan',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 14.h,
                          ),
                        ),
                        items:
                            [
                              '',
                              'Toko',
                              'Industri',
                              'Kontraktor',
                              'Partai',
                              'Eceran',
                              'Pribadi',
                            ].map((item) {
                              return DropdownMenuItem<String>(
                                value: item != '' ? item : null,
                                child: Text(item, style: captionStyle),
                              );
                            }).toList(),
                        onChanged: (val) {
                          setState(() {
                            _subscriptionType = val;
                          });
                        },
                        validator: (value) {
                          return value == null ? 'Tidak Boleh Kosong' : null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              buildInputBox(
                controller: _requestDestinationController,
                label: 'Tujuan Form',
                validator: (value) {
                  return (value != null && value != '')
                      ? null
                      : 'Tidak Boleh Kosong';
                },
              ),
              SizedBox(height: 16.h),

              buildInputBox(
                controller: _carbonCopyController,
                label: 'Tembusan / CC',
                validator: (value) {
                  return (value != null && value != '')
                      ? null
                      : 'Tidak Boleh Kosong';
                },
              ),
              SizedBox(height: 16.h),

              // Company Data
              buildCompanyDataExpansionTile(),
              SizedBox(height: 16.h),

              // Owner / PIC Data
              _customerType == 'PKP'
                  ? buildPicDataExpansionTile()
                  : buildOwnerDataExpansionTile(),
              SizedBox(height: 16.h),

              // Credit Information
              buildCreditInfoExpansionTile(),
              SizedBox(height: 16.h),

              buildInputBox(
                controller: _notesController,
                label: 'Catatan',
                maxLines: 3,
                validator: (value) {
                  return null;
                },
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 8.h, top: 8.h),
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _submitButtonEnabled
                  ? ElevatedButton(
                    onPressed: _submitButtonEnabled ? _submit : null,
                    child: Text('Kirim Form', style: buttonStyle),
                  )
                  : const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCompanyDataExpansionTile() {
    return ExpansionTile(
      title: Text('Data Perusahaan / Toko', style: bodyStyle),
      children: [
        // Store Image Picker
        Center(child: Text('Foto Gedung / Toko', style: captionStyle)),
        GestureDetector(
          onTap:
              _pickStorePhotoEnabled
                  ? () async {
                    _pickStorePhotoEnabled = false;
                    File? pickedImage = await pickImage(context: context);

                    if (pickedImage != null) {
                      setState(() {
                        _storePhoto = pickedImage;
                      });
                    }
                    _pickStorePhotoEnabled = true;
                  }
                  : null,
          child: Container(
            width: ScreenUtil().screenWidth * 0.8,
            decoration: photoBoxDecoration(context),
            child: AspectRatio(
              aspectRatio: 3 / 4,
              child:
                  _storePhoto != null
                      ? ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: Image.file(
                          _storePhoto!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                          errorBuilder:
                              (_, __, ___) =>
                                  imageErrorWidget(context: context),
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
                            Text(
                              'Ketuk untuk Mengambil Foto',
                              style: captionStyle,
                            ),
                          ],
                        ),
                      ),
            ),
          ),
        ),
        SizedBox(height: 16.h),

        // Company Name
        buildInputBox(
          controller: _companyNameController,
          label: 'Nama Perusahaan',
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),

        // Company Email
        buildInputBox(
          controller: _companyEmailController,
          label: 'Email Perusahaan',
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),

        // Company Phone Number
        buildInputBox(
          controller: _companyPhoneController,
          label: 'Nomor Telepon Perusahaan',
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),

        // Company Address
        buildInputBox(
          controller: _companyAddressController,
          label: 'Alamat Perusahaan',
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),

        // Company Tax ID (PKP only)
        _customerType == 'PKP'
            ? buildInputBox(
              controller: _companyTaxIdController,
              label: 'NPWP Perusahaan',
              validator: (value) {
                if (_customerType == 'Non PKP') return null;
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
              },
            )
            : const SizedBox.shrink(),
        _customerType == 'PKP'
            ? SizedBox(height: 16.h)
            : const SizedBox.shrink(),

        // Store Condition
        buildInputBox(
          controller: _storeConditionController,
          label: 'Kondisi Gedung / Toko',
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),
      ],
    );
  }

  Widget buildOwnerDataExpansionTile() {
    return ExpansionTile(
      title: Text('Data Pemilik', style: bodyStyle),
      childrenPadding: EdgeInsets.symmetric(horizontal: 8.w),
      children: [
        // KTP Photo
        Center(child: Text('Foto KTP Pemilik', style: captionStyle)),
        GestureDetector(
          onTap:
              _pickOwnerIdPhotoEnabled
                  ? () async {
                    _pickOwnerIdPhotoEnabled = false;
                    File? pickedImage = await pickImage(context: context);

                    if (pickedImage != null) {
                      setState(() {
                        _ktpPhoto = pickedImage;
                      });
                    }
                    _pickOwnerIdPhotoEnabled = true;
                  }
                  : null,
          child: Container(
            width: ScreenUtil().screenWidth * 0.8,
            decoration: photoBoxDecoration(context),
            child: AspectRatio(
              aspectRatio: 3 / 4,
              child:
                  _ktpPhoto != null
                      ? ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: Image.file(
                          _ktpPhoto!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                          errorBuilder:
                              (_, __, ___) =>
                                  imageErrorWidget(context: context),
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
                            Text(
                              'Ketuk untuk Mengambil Foto',
                              style: captionStyle,
                            ),
                          ],
                        ),
                      ),
            ),
          ),
        ),
        SizedBox(height: 16.h),

        // Owner Name
        buildInputBox(
          controller: _ownerNameController,
          label: 'Nama Pemilik',
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),

        // Owner Address
        buildInputBox(
          controller: _ownerAddressController,
          label: 'Alamat Pemilik',
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),

        // Owner Phone Number
        buildInputBox(
          controller: _ownerPhoneController,
          label: 'Nomor Telepon Pemilik',
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),

        // Owner National ID
        buildInputBox(
          controller: _ownerNationalIdController,
          label: 'NIK Pemilik (jika ada)',
          validator: (value) {
            return null;
          },
        ),
        SizedBox(height: 16.h),

        // PIC Tax ID (Non PKP only)
        buildInputBox(
          controller: _ownerTaxIdController,
          label: 'NPWP Pemilik',
          validator: (value) {
            if (_customerType == 'PKP') return null;
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),

        // Owner Ownership Status
        buildInputBox(
          controller: _ownershipStatusController,
          label: 'Status Kepemilikan',
          validator: (value) {
            if (_customerType == 'PKP') return null;
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),
      ],
    );
  }

  Widget buildPicDataExpansionTile() {
    return ExpansionTile(
      title: Text('Data PIC', style: bodyStyle),
      childrenPadding: EdgeInsets.symmetric(horizontal: 8.w),
      children: [
        // KTP Photo
        Center(child: Text('Foto KTP PIC', style: captionStyle)),
        Center(child: Text('(jika ada)', style: captionStyle)),
        GestureDetector(
          onTap:
              _pickOwnerIdPhotoEnabled
                  ? () async {
                    _pickOwnerIdPhotoEnabled = false;
                    File? pickedImage = await pickImage(context: context);

                    if (pickedImage != null) {
                      setState(() {
                        _ktpPhoto = pickedImage;
                      });
                    }
                    _pickOwnerIdPhotoEnabled = true;
                  }
                  : null,
          child: Container(
            width: ScreenUtil().screenWidth * 0.8,
            decoration: photoBoxDecoration(context),
            child: AspectRatio(
              aspectRatio: 3 / 4,
              child:
                  _ktpPhoto != null
                      ? ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: Image.file(
                          _ktpPhoto!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                          errorBuilder:
                              (_, __, ___) =>
                                  imageErrorWidget(context: context),
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
                            Text(
                              'Ketuk untuk Mengambil Foto',
                              style: captionStyle,
                            ),
                          ],
                        ),
                      ),
            ),
          ),
        ),
        SizedBox(height: 16.h),

        // PIC Name
        buildInputBox(
          controller: _ownerNameController,
          label: 'Nama PIC',
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),

        // PIC Phone Number
        buildInputBox(
          controller: _ownerPhoneController,
          label: 'Nomor Telepon PIC',
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),

        // PIC National ID
        buildInputBox(
          controller: _ownerNationalIdController,
          label: 'NIK PIC (jika ada)',
          validator: (value) {
            return null;
          },
        ),
        SizedBox(height: 16.h),

        // PIC Position
        buildInputBox(
          controller: _picPositionController,
          label: 'Posisi PIC dalam Perusahaan',
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),
      ],
    );
  }

  Widget buildCreditInfoExpansionTile() {
    return ExpansionTile(
      title: Text('Informasi Pembayaran', style: bodyStyle),
      childrenPadding: EdgeInsets.symmetric(horizontal: 8.w),
      children: [
        SizedBox(height: 4.h),
        buildInputBox(
          controller: _creditPeriodController,
          label: 'Jangka Waktu Kredit (dalam hari)',
          suffix: 'hari',
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),

        buildInputBox(
          controller: _creditLimitController,
          label: 'Batas Kredit (dalam Rp)',
          prefix: 'Rp. ',
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          validator: (value) {
            return (value != null && value != '') ? null : 'Tidak Boleh Kosong';
          },
        ),
        SizedBox(height: 16.h),
      ],
    );
  }

  bool isAllRequiredDataFilled() {
    // Upper Data
    final customerTypeStatus = _customerType != null;
    final subscriptionTypeStatus = _subscriptionType != null;
    final requestDestinationFilled = _requestDestinationController.text != '';
    final carbonCopyFilled = _carbonCopyController.text != '';
    final creditPeriodFilled = _creditPeriodController.text != '';
    final creditLimitFilled = _creditLimitController.text != '';

    // Company Data
    final storePhotoStatus = _storePhoto != null;
    final companyNameFilled = _companyNameController.text != '';
    final companyAddressFilled = _companyAddressController.text != '';
    final companyPhoneFilled = _companyPhoneController.text != '';
    final companyTaxIdFilled =
        _customerType == 'PKP' ? (_companyTaxIdController.text != '') : true;
    final companyEmailFilled = _companyEmailController.text != '';
    final storeConditionFilled = _storeConditionController.text != '';

    // Owner/PIC Data
    bool ktpPhotoStatus;
    bool ownerAddressFilled;
    bool ownerTaxIdFilled;
    bool ownerNationalIdFilled;
    bool ownershipStatusFilled;
    bool ownerNameFilled = _ownerNameController.text.isNotEmpty;
    bool ownerPhoneFilled = _ownerPhoneController.text.isNotEmpty;
    bool picPositionFilled;

    // Owner data needed for Non PKP
    if (_customerType == 'Non PKP') {
      ktpPhotoStatus = _ktpPhoto != null;
      ownerAddressFilled = _ownerAddressController.text.isNotEmpty;
      ownerTaxIdFilled = _ownerTaxIdController.text.isNotEmpty;
      ownerNationalIdFilled = true;
      // ownerNationalIdFilled = _ownerNationalIdController.text.isNotEmpty;
      ownershipStatusFilled = _ownershipStatusController.text.isNotEmpty;
      picPositionFilled = true;
    }
    // PIC data needed for PKP
    else if (_customerType == 'PKP') {
      ktpPhotoStatus = true;
      ownerAddressFilled = true;
      ownerTaxIdFilled = true;
      ownerNationalIdFilled = true;
      ownershipStatusFilled = true;
      picPositionFilled = _picPositionController.text.isNotEmpty;
    }
    // Nullify all data if customer type is not selected
    else {
      ktpPhotoStatus = false;
      ownerAddressFilled = false;
      ownerTaxIdFilled = false;
      ownerNationalIdFilled = false;
      ownershipStatusFilled = false;
      picPositionFilled = false;
    }

    final noteFilled = true;

    final allFlags = [
      // Upper Data
      customerTypeStatus,
      subscriptionTypeStatus,
      requestDestinationFilled,
      carbonCopyFilled,

      // Company Data
      storePhotoStatus,
      companyNameFilled,
      companyAddressFilled,
      companyPhoneFilled,
      companyTaxIdFilled,
      companyEmailFilled,
      storeConditionFilled,

      // Owner/PIC Data
      ktpPhotoStatus,
      ownerNameFilled,
      ownerAddressFilled,
      ownerPhoneFilled,
      ownerTaxIdFilled,
      ownerNationalIdFilled,
      ownershipStatusFilled,
      picPositionFilled,

      // Credit Information
      creditPeriodFilled,
      creditLimitFilled,

      // Notes
      noteFilled,
    ];

    // true only if every single flag is true
    return allFlags.every((flag) => flag);
  }

  void _submit() async {
    setState(() {
      _submitButtonEnabled = false;
    });
    // Validate to trigger warning
    _formKey.currentState?.validate();

    if (isAllRequiredDataFilled()) {
      final state = await ref
          .read(createCustomerRequestControllerProvider.notifier)
          .createCustomerRequest(
            storePhoto: _storePhoto,
            ktpPhoto: _ktpPhoto,
            customer_type: _customerType ?? '',
            subscription_type: _subscriptionType ?? '',

            request_destination: _requestDestinationController.text,
            carbon_copy: _carbonCopyController.text,

            company_name: _companyNameController.text,
            company_address: _companyAddressController.text,
            company_phone_number: _companyPhoneController.text,
            company_tax_id: _companyTaxIdController.text,
            company_email: _companyEmailController.text,
            company_store_condition: _storeConditionController.text,

            pic_name: _ownerNameController.text,
            pic_address: _ownerAddressController.text,
            pic_phone_number: _ownerPhoneController.text,
            pic_national_id: _ownerNationalIdController.text,
            pic_tax_id: _ownerTaxIdController.text,
            pic_position: _picPositionController.text,
            ownership_status: _ownershipStatusController.text,

            credit_period: _creditPeriodController.text,
            credit_limit: _creditLimitController.text,

            note: _notesController.text,
          );

      // If submit success
      if (state is AsyncData) {
        // Clear all form data
        _storePhoto = null;
        _ktpPhoto = null;

        _customerType = null;
        _subscriptionType = null;

        _requestDestinationController.text = '';
        _carbonCopyController.text = '';

        _companyNameController.text = '';
        _companyAddressController.text = '';
        _companyPhoneController.text = '';
        _companyEmailController.text = '';
        _storeConditionController.text = '';

        _ownerNameController.text = '';
        _ownerAddressController.text = '';
        _ownerPhoneController.text = '';
        _ownerTaxIdController.text = '';
        _ownerNationalIdController.text = '';
        _ownershipStatusController.text = '';
        _picPositionController.text = '';

        _creditPeriodController.text = '';
        _creditLimitController.text = '';

        _notesController.text = '';

        showFeedbackDialog(
          context: context,
          type: 1,
          message: 'Form Pelanggan Berhasil Dikirim',
          onClose: () {
            setState(() {
              _submitButtonEnabled = true;
            });

            // Close form page
            Navigator.of(context).pop();
          },
        );
        setState(() {
          _submitButtonEnabled = true;
        });
      }
      //  If submit fail
      else if (state is AsyncError) {
        final apiException = state.error as ApiException;

        showFeedbackDialog(
          context: context,
          type: 3,
          message: 'Gagal Mengirim Form: ${apiException.message}',
          onClose: () {
            setState(() {
              _submitButtonEnabled = true;
            });
          },
        );
      } else {
        showFeedbackDialog(
          context: context,
          type: 3,
          message: 'Gagal Mengirim Form',
          onClose: () {
            setState(() {
              _submitButtonEnabled = true;
            });
          },
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Data Belum Lengkap'),
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 2),
        ),
      );
      setState(() {
        _submitButtonEnabled = true;
      });
    }
  }
}
