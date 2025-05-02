import 'dart:io';

import 'package:android_app/customer_module/page/controller/create_customer_request_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class AddCustomerPage extends StatefulHookConsumerWidget {
  const AddCustomerPage({super.key});

  @override
  ConsumerState<AddCustomerPage> createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends ConsumerState<AddCustomerPage> {
  final _formKey = GlobalKey<FormState>();
  final _picker = ImagePicker();

  File? _storePhoto;
  File? _ktpPhoto;
  String? _customerType;
  String? _subscriptionType;
  bool _submitButtonEnabled = true;

  @override
  Widget build(BuildContext context) {
    final requestDestination = useTextEditingController();
    final carbonCopy = useTextEditingController();
    final companyName = useTextEditingController();
    final companyAddress = useTextEditingController();
    final companyPhone = useTextEditingController();
    final companyEmail = useTextEditingController();
    final storeCondition = useTextEditingController();
    final ownerName = useTextEditingController();
    final ownerAddress = useTextEditingController();
    final ownerPhone = useTextEditingController();
    final ownerTaxId = useTextEditingController();
    final ownerNationalId = useTextEditingController();
    final ownershipStatus = useTextEditingController();
    final note = useTextEditingController();

    return Scaffold(
      appBar: customAppBar(title: 'Add Customer Form', showLeftButton: true),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 8.h, top: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Submit Button
            _submitButtonEnabled
                ? ElevatedButton(
                  onPressed:
                      _submitButtonEnabled
                          ? () async {
                            setState(() {
                              _submitButtonEnabled = false;
                            });
                            // Validate to trigger warning
                            _formKey.currentState?.validate();

                            final storePhotoStatus = _storePhoto != null;
                            final ktpPhotoStatus = _ktpPhoto != null;

                            final customerTypeStatus = _customerType != null;
                            final subscriptionTypeStatus =
                                _subscriptionType != null;

                            final requestDestinationFilled =
                                requestDestination.text != '';
                            final carbonCopyFilled = carbonCopy.text != '';

                            final companyNameFilled = companyName.text != '';
                            final companyAddressFilled =
                                companyAddress.text != '';
                            final companyPhoneFilled = companyPhone.text != '';
                            final companyEmailFilled = companyEmail.text != '';
                            final storeConditionFilled =
                                storeCondition.text != '';

                            final ownerNameFilled = ownerName.text != '';
                            final ownerAddressFilled = ownerAddress.text != '';
                            final ownerPhoneFilled = ownerPhone.text != '';
                            final ownerTaxIdFilled =
                                _customerType == 'Non PKP'
                                    ? true
                                    : (ownerTaxId.text != '');
                            final ownerNationalIdFilled =
                                ownerNationalId.text != '';
                            final ownershipStatusFilled =
                                ownershipStatus.text != '';

                            final noteFilled = true;

                            if (storePhotoStatus &&
                                ktpPhotoStatus &&
                                customerTypeStatus &&
                                subscriptionTypeStatus &&
                                requestDestinationFilled &&
                                carbonCopyFilled &&
                                companyNameFilled &&
                                companyAddressFilled &&
                                companyPhoneFilled &&
                                companyEmailFilled &&
                                storeConditionFilled &&
                                ownerNameFilled &&
                                ownerAddressFilled &&
                                ownerPhoneFilled &&
                                ownerTaxIdFilled &&
                                ownerNationalIdFilled &&
                                ownershipStatusFilled &&
                                noteFilled) {
                              final state = await ref
                                  .read(
                                    createCustomerRequestControllerProvider
                                        .notifier,
                                  )
                                  .createCustomerRequest(
                                    storePhoto: _storePhoto,
                                    ktpPhoto: _ktpPhoto,
                                    customer_type: _customerType ?? '',
                                    subscription_type: _subscriptionType ?? '',

                                    request_destination:
                                        requestDestination.text,
                                    carbon_copy: carbonCopy.text,

                                    company_name: companyName.text,
                                    company_address: companyAddress.text,
                                    company_phone_number: companyPhone.text,
                                    company_email: companyEmail.text,
                                    company_store_condition:
                                        storeCondition.text,

                                    owner_name: ownerName.text,
                                    owner_address: ownerAddress.text,
                                    owner_phone_number: ownerPhone.text,
                                    owner_tax_id: ownerTaxId.text,
                                    owner_national_id: ownerNationalId.text,
                                    ownership_status: ownershipStatus.text,

                                    note: note.text,
                                  );

                              // If submit success
                              if (state is AsyncData) {
                                print('asds sukses coy');
                                // Clear all form data
                                _storePhoto = null;
                                _ktpPhoto = null;

                                _customerType = null;
                                _subscriptionType = null;

                                requestDestination.text = '';
                                carbonCopy.text = '';

                                companyName.text = '';
                                companyAddress.text = '';
                                companyPhone.text = '';
                                companyEmail.text = '';
                                storeCondition.text = '';

                                ownerName.text = '';
                                ownerAddress.text = '';
                                ownerPhone.text = '';
                                ownerTaxId.text = '';
                                ownerNationalId.text = '';
                                ownershipStatus.text = '';
                                note.text = '';

                                final result = state.value;

                                showFeedbackDialog(
                                  context: context,
                                  type: 1,
                                  message: 'Customer Form Submitted',
                                  onClose: () {
                                    setState(() {
                                      _submitButtonEnabled = true;
                                    });
                                  },
                                );
                                setState(() {
                                  _submitButtonEnabled = true;
                                });
                              }
                              //  If submit fail
                              else if (state is AsyncError) {
                                final apiException =
                                    state.error as ApiException;

                                print('asds ${apiException.responseBody}');
                                showFeedbackDialog(
                                  context: context,
                                  type: 3,
                                  message: apiException.message,
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
                                  message: 'Unknown Error',
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
                                  content: Text('Data not Complete'),
                                  behavior: SnackBarBehavior.floating,
                                  duration: Duration(seconds: 2),
                                ),
                              );
                              setState(() {
                                _submitButtonEnabled = true;
                              });
                            }
                          }
                          : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    foregroundColor: backgroundColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.w,
                      vertical: 14.h,
                    ),
                  ),
                  child: Text(
                    'Add Customer',
                    style: buttonStyle.copyWith(fontSize: 16.sp),
                  ),
                )
                : const CircularProgressIndicator(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
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
                        dropdownColor: fillColor,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: textColor,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Customer Type',
                          labelStyle: captionStyle,
                          filled: true,
                          fillColor: fillColor,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 14.h,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                              color: dividerColor,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                              color: dividerColor,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                              color: dividerColor,
                              width: 2,
                            ),
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
                            if (val == 'Non PKP') ownerTaxId.text = '';
                            _customerType = val;
                          });
                        },
                        validator: (value) {
                          return value == null ? 'Required Field' : null;
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.r),
                      child: DropdownButtonFormField<String>(
                        value: _subscriptionType,
                        dropdownColor: fillColor,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: textColor,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Subscription Type',
                          labelStyle: captionStyle,
                          filled: true,
                          fillColor: fillColor,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 14.h,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                              color: dividerColor,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                              color: dividerColor,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                              color: dividerColor,
                              width: 2,
                            ),
                          ),
                        ),
                        items:
                            [
                              '',
                              'Toko',
                              'Industri',
                              'Eceran',
                              'Grosir',
                              'Lainnya',
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
                          return value == null ? 'Required Field' : null;
                        },
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16.h),

              ExpansionTile(
                title: Text('Company Data', style: bodyStyle),
                childrenPadding: EdgeInsets.symmetric(horizontal: 8.w),
                backgroundColor: fillColor,
                collapsedBackgroundColor: fillColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  side: BorderSide(color: primaryColor, width: 2),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  side: BorderSide(color: dividerColor, width: 2),
                ),
                children: [
                  // Profile Image Picker
                  Center(child: Text('Store Picture', style: captionStyle)),
                  GestureDetector(
                    onTap: _pickStorePhoto,
                    child: Container(
                      width: 120.w,
                      height: 120.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: dividerColor),
                        image:
                            _storePhoto != null
                                ? DecorationImage(
                                  image: FileImage(_storePhoto!),
                                  fit: BoxFit.cover,
                                )
                                : null,
                      ),
                      child:
                          _storePhoto == null
                              ? Icon(
                                Icons.camera_alt,
                                size: 40.sp,
                                color: dividerColor,
                              )
                              : null,
                    ),
                  ),
                  SizedBox(height: 16.h),

                  _buildInputRow(
                    controller: requestDestination,
                    label: 'Request Destination',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  _buildInputRow(
                    controller: carbonCopy,
                    label: 'Carbon Copy',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  _buildInputRow(
                    controller: companyName,
                    label: 'Company Name',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  _buildInputRow(
                    controller: companyAddress,
                    label: 'Company Address',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  _buildInputRow(
                    controller: companyPhone,
                    label: 'Company Phone Number',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  _buildInputRow(
                    controller: companyEmail,
                    label: 'Company Email',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  _buildInputRow(
                    controller: storeCondition,
                    label: 'Store Condition',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                ],
              ),

              SizedBox(height: 16.h),

              ExpansionTile(
                title: Text('Owner Data', style: bodyStyle),
                childrenPadding: EdgeInsets.symmetric(horizontal: 8.w),
                backgroundColor: fillColor,
                collapsedBackgroundColor: fillColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  side: BorderSide(color: primaryColor, width: 2),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  side: BorderSide(color: dividerColor, width: 2),
                ),
                children: [
                  // KTP Photo
                  Center(child: Text('Owner ID Picture', style: captionStyle)),
                  GestureDetector(
                    onTap: _pickKtpPhoto,
                    child: Container(
                      width: 120.w,
                      height: 120.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: dividerColor),
                        image:
                            _ktpPhoto != null
                                ? DecorationImage(
                                  image: FileImage(_ktpPhoto!),
                                  fit: BoxFit.cover,
                                )
                                : null,
                      ),
                      child:
                          _ktpPhoto == null
                              ? Icon(
                                Icons.camera_alt,
                                size: 40.sp,
                                color: dividerColor,
                              )
                              : null,
                    ),
                  ),
                  SizedBox(height: 16.h),

                  _buildInputRow(
                    controller: ownerName,
                    label: 'Owner Name',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  _buildInputRow(
                    controller: ownerAddress,
                    label: 'Owner Address',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  _buildInputRow(
                    controller: ownerPhone,
                    label: 'Owner Phone Number',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  _buildInputRow(
                    controller: ownerNationalId,
                    label: 'Owner National ID',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  _buildInputRow(
                    controller: ownerTaxId,
                    label: 'Owner Tax ID',
                    enabled: _customerType == '' || _customerType == 'PKP',
                    validator: (value) {
                      if (_customerType == 'Non PKP') return null;
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),

                  _buildInputRow(
                    controller: ownershipStatus,
                    label: 'Ownership Status',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                ],
              ),

              SizedBox(height: 16.h),

              _buildInputRow(
                controller: note,
                label: 'Note',
                maxLines: 3,
                validator: (value) {
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickStorePhoto({bool fromGallery = true}) async {
    final picked = await _picker.pickImage(
      source: fromGallery ? ImageSource.gallery : ImageSource.camera,
    );
    if (picked != null) setState(() => _storePhoto = File(picked.path));
  }

  Future<void> _pickKtpPhoto({bool fromGallery = true}) async {
    final picked = await _picker.pickImage(
      source: fromGallery ? ImageSource.gallery : ImageSource.camera,
    );

    if (picked != null) setState(() => _ktpPhoto = File(picked.path));
  }

  Widget _buildInputRow({
    required TextEditingController controller,
    required String label,
    String? Function(String?)? validator,
    TextInputType keyboardType = TextInputType.text,
    int? maxLines = 1,
    bool enabled = true,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: TextFormField(
        enabled: enabled,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: bodyStyle,
          filled: true,
          fillColor: fillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: dividerColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: dividerColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: primaryColor, width: 2),
          ),
        ),
      ),
    );
  }
}
