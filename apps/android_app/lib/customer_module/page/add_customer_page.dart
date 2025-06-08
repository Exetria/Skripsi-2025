import 'dart:io';

import 'package:android_app/customer_module/page/controller/create_customer_request_controller.dart';
import 'package:android_app/utils/functions.dart';
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
  String _storePhotoError = '';
  bool _submitButtonEnabled = true;
  bool _pickStorePhotoEnabled = true;
  bool _pickOwnerIdPhotoEnabled = true;

  bool companyDataErrorMessage = false;
  bool picDataErrorMessage = false;
  bool paymentInfoErrorMessage = false;

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
              // buildInputBox(
              //   controller: _requestDestinationController,
              //   label: 'Tujuan Form (contoh: Bu Rosa)',
              //   validator: (value) {
              //     return (value != null && value != '')
              //         ? null
              //         : 'Tidak Boleh Kosong';
              //   },
              // ),
              // SizedBox(height: 16.h),

              // buildInputBox(
              //   controller: _carbonCopyController,
              //   label: 'Tembusan (jika ada)',
              //   validator: (value) {
              //     return null;
              //   },
              // ),
              // SizedBox(height: 16.h),

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionTile(
          title: Text('Data Perusahaan / Toko', style: bodyStyle),
          children: [
            // Store Image Picker
            Center(child: Text('Foto Gedung / Toko', style: captionStyle)),
            GestureDetector(
              onTap:
                  _pickStorePhotoEnabled
                      ? () async {
                        setState(() {
                          _pickStorePhotoEnabled = false;
                        });
                        File? pickedImage = await pickImage(context: context);

                        if (pickedImage != null) {
                          setState(() {
                            _storePhoto = pickedImage;
                            _storePhotoError = '';
                          });
                        }
                        setState(() {
                          _pickStorePhotoEnabled = true;
                        });
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
                                  color:
                                      _storePhotoError.isEmpty
                                          ? dividerColor
                                          : Theme.of(context).colorScheme.error,
                                ),
                                SizedBox(height: 8.h),
                                _storePhotoError.isEmpty
                                    ? Text(
                                      'Ketuk untuk Mengambil Foto',
                                      style: captionStyle,
                                    )
                                    : Text(
                                      _storePhotoError,
                                      style: captionStyle.copyWith(
                                        color:
                                            Theme.of(context).colorScheme.error,
                                      ),
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
              label: 'Nama Perusahaan / Toko',
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
              },
            ),
            SizedBox(height: 16.h),

            // Company Email
            buildInputBox(
              controller: _companyEmailController,
              label: 'Email Perusahaan / Toko (jika ada)',
              validator: (value) {
                return null;
              },
            ),
            SizedBox(height: 16.h),

            // Company Phone Number
            buildInputBox(
              controller: _companyPhoneController,
              label: 'Nomor Telepon Perusahaan / Toko',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
              },
            ),
            SizedBox(height: 16.h),

            // Company Address
            buildInputBox(
              controller: _companyAddressController,
              label: 'Alamat Perusahaan / Toko',
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
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
              label: 'Keterangan Gedung (contoh: ruko 2 lantai)',
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
              },
            ),
            SizedBox(height: 16.h),
          ],
        ),
        companyDataErrorMessage
            ? Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text(
                'Data Perusahaan / Toko Belum Lengkap',
                style: footnoteStyle.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            )
            : const SizedBox.shrink(),
      ],
    );
  }

  Widget buildOwnerDataExpansionTile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionTile(
          title: Text('Data Pemilik', style: bodyStyle),
          childrenPadding: EdgeInsets.symmetric(horizontal: 8.w),
          children: [
            // KTP Photo
            Center(child: Text('Foto KTP Pemilik', style: captionStyle)),
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

            // Owner Name
            buildInputBox(
              controller: _ownerNameController,
              label: 'Nama Pemilik',
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
              },
            ),
            SizedBox(height: 16.h),

            // Owner Address
            buildInputBox(
              controller: _ownerAddressController,
              label: 'Alamat Pemilik',
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
              },
            ),
            SizedBox(height: 16.h),

            // Owner Phone Number
            buildInputBox(
              controller: _ownerPhoneController,
              label: 'Nomor Telepon Pemilik',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
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
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
              },
            ),
            SizedBox(height: 16.h),

            // Owner Ownership Status
            buildInputBox(
              controller: _ownershipStatusController,
              label: 'Kepemilikan (contoh: milik sendiri)',
              validator: (value) {
                if (_customerType == 'PKP') return null;
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
              },
            ),
            SizedBox(height: 16.h),
          ],
        ),
        picDataErrorMessage
            ? Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text(
                'Data Pemilik Belum Lengkap',
                style: footnoteStyle.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            )
            : const SizedBox.shrink(),
      ],
    );
  }

  Widget buildPicDataExpansionTile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionTile(
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
                        setState(() {
                          _pickOwnerIdPhotoEnabled = false;
                        });
                        File? pickedImage = await pickImage(context: context);

                        if (pickedImage != null) {
                          setState(() {
                            _ktpPhoto = pickedImage;
                          });
                        }
                        setState(() {
                          _pickOwnerIdPhotoEnabled = true;
                        });
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
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
              },
            ),
            SizedBox(height: 16.h),

            // PIC Phone Number
            buildInputBox(
              controller: _ownerPhoneController,
              label: 'Nomor Telepon PIC',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
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
              label: 'Posisi PIC dalam Perusahaan (contoh: manager)',
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
              },
            ),
            SizedBox(height: 16.h),
          ],
        ),
        picDataErrorMessage
            ? Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text(
                'Data PIC Belum Lengkap',
                style: footnoteStyle.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            )
            : const SizedBox.shrink(),
      ],
    );
  }

  Widget buildCreditInfoExpansionTile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionTile(
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
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
              },
            ),
            SizedBox(height: 16.h),

            buildInputBox(
              controller: _creditLimitController,
              label: 'Batas Kredit (dalam Rp)',
              prefix: 'Rp. ',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) {
                return (value != null && value != '')
                    ? null
                    : 'Tidak Boleh Kosong';
              },
            ),
            SizedBox(height: 16.h),
          ],
        ),
        paymentInfoErrorMessage
            ? Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text(
                'Informasi Pembayaran Belum Lengkap',
                style: footnoteStyle.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            )
            : const SizedBox.shrink(),
      ],
    );
  }

  bool isUpperDataFilled() {
    // Upper Data
    final customerTypeStatus = _customerType != null;
    final subscriptionTypeStatus = _subscriptionType != null;
    final requestDestinationFilled = true;
    final carbonCopyFilled = true;

    final allFlags = [
      customerTypeStatus,
      subscriptionTypeStatus,
      requestDestinationFilled,
      carbonCopyFilled,
    ];

    return allFlags.every((flag) => flag);
  }

  bool isCompanyDataFilled() {
    // Company Data
    final companyNameFilled = _companyNameController.text.isNotEmpty;
    final companyAddressFilled = _companyAddressController.text.isNotEmpty;
    final companyPhoneFilled = _companyPhoneController.text.isNotEmpty;
    final companyTaxIdFilled =
        _customerType == 'PKP' ? (_companyTaxIdController.text != '') : true;
    final companyEmailFilled = true;
    final storeConditionFilled = _storeConditionController.text.isNotEmpty;

    final allFlags = [
      companyNameFilled,
      companyAddressFilled,
      companyPhoneFilled,
      companyTaxIdFilled,
      companyEmailFilled,
      storeConditionFilled,
    ];

    return allFlags.every((flag) => flag);
  }

  bool isPicDataFilled() {
    // Owner/PIC Data
    bool ktpPhotoStatus;
    bool picAddressFilled;
    bool picTaxIdFilled;
    bool picNationalIdFilled;
    bool ownershipStatusFilled;
    bool picNameFilled = _ownerNameController.text.isNotEmpty;
    bool picPhoneFilled = _ownerPhoneController.text.isNotEmpty;
    bool picPositionFilled;

    // Field is not required after revision
    ktpPhotoStatus = true;
    picNationalIdFilled = true;

    // Owner data needed for Non PKP
    if (_customerType == 'Non PKP') {
      picAddressFilled = _ownerAddressController.text.isNotEmpty;
      picTaxIdFilled = _ownerTaxIdController.text.isNotEmpty;
      // ownerNationalIdFilled = _ownerNationalIdController.text.isNotEmpty;
      ownershipStatusFilled = _ownershipStatusController.text.isNotEmpty;
      picPositionFilled = true;
    }
    // PIC data needed for PKP
    else if (_customerType == 'PKP') {
      picAddressFilled = true;
      picTaxIdFilled = true;
      ownershipStatusFilled = true;
      picPositionFilled = _picPositionController.text.isNotEmpty;
    }
    // Nullify all data if customer type is not selected
    else {
      picAddressFilled = false;
      picTaxIdFilled = false;
      ownershipStatusFilled = false;
      picPositionFilled = false;
    }

    final noteFilled = true;

    final allFlags = [
      // Owner/PIC Data
      ktpPhotoStatus,
      picNameFilled,
      picAddressFilled,
      picPhoneFilled,
      picTaxIdFilled,
      picNationalIdFilled,
      ownershipStatusFilled,
      picPositionFilled,

      // Notes
      noteFilled,
    ];

    // true only if every single flag is true
    return allFlags.every((flag) => flag);
  }

  bool isPaymentInfoFilled() {
    final creditPeriodFilled = _creditPeriodController.text.isNotEmpty;
    final creditLimitFilled = _creditLimitController.text.isNotEmpty;

    final allFlags = [creditPeriodFilled, creditLimitFilled];

    return allFlags.every((flag) => flag);
  }

  bool isAllRequiredTextDataFilled() {
    return isUpperDataFilled() &&
        isPicDataFilled() &&
        isCompanyDataFilled() &&
        isPaymentInfoFilled();
  }

  bool isStorePhotoExist() {
    if (_storePhoto == null) {
      setState(() {
        _storePhotoError =
            'Foto Gedung / Toko harus diisi\nKetuk untuk Mengambil Foto';
      });
    } else {
      setState(() {
        _storePhotoError = '';
      });
    }
    return _storePhoto != null;
  }

  void _submit() async {
    String? errorMessage;

    // Validate to trigger warning
    _formKey.currentState?.validate();

    // Check payment info
    if (!isPaymentInfoFilled()) {
      errorMessage = 'Informasi Pembayaran Belum Lengkap';
      paymentInfoErrorMessage = true;
    } else {
      paymentInfoErrorMessage = false;
    }

    // Check pic data
    if (!isPicDataFilled()) {
      errorMessage = 'Data Pemilik / PIC Belum Lengkap';
      picDataErrorMessage = true;
    } else {
      picDataErrorMessage = false;
    }

    // Check store photo
    if (!isStorePhotoExist()) {
      errorMessage = 'Foto Gedung / Toko Belum Diisi';
      companyDataErrorMessage = true;
    } else {
      companyDataErrorMessage = false;
    }

    // Check store data
    if (!isCompanyDataFilled()) {
      errorMessage = 'Data Perusahaan / Toko Belum Lengkap';
      companyDataErrorMessage = true;
    } else {
      companyDataErrorMessage = false;
    }

    // Check type & subscription
    if (!isUpperDataFilled()) {
      errorMessage = 'Pilih Tipe & Jenis Langganan';
    }

    if (!isAllRequiredTextDataFilled() || _storePhoto == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage ?? 'Data Belum Lengkap'),
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 2),
        ),
      );

      isStorePhotoExist();
      return;
    }

    setState(() {
      _submitButtonEnabled = false;
    });

    if (isAllRequiredTextDataFilled() && _storePhoto != null) {
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
      setState(() {
        _submitButtonEnabled = true;
      });
    }
  }
}
