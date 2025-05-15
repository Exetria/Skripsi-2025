import 'dart:io';

import 'package:android_app/customer_module/page/controller/create_customer_request_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:android_app/utils/widget_settings.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddCustomerPage extends StatefulHookConsumerWidget {
  const AddCustomerPage({super.key});

  @override
  ConsumerState<AddCustomerPage> createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends ConsumerState<AddCustomerPage> {
  final _formKey = GlobalKey<FormState>();

  File? _storePhoto;
  File? _ktpPhoto;
  String? _customerType;
  String? _subscriptionType;
  bool _submitButtonEnabled = true;

  final _requestDestinationController = TextEditingController();
  final _carbonCopyController = TextEditingController();
  final _companyNameController = TextEditingController();
  final _companyAddressController = TextEditingController();
  final _companyPhoneController = TextEditingController();
  final _companyTaxIdController = TextEditingController();
  final _companyEmailController = TextEditingController();
  final _storeConditionController = TextEditingController();
  final _ownerNameController = TextEditingController();
  final _ownerAddressController = TextEditingController();
  final _ownerPhoneController = TextEditingController();
  final _ownerTaxIdController = TextEditingController();
  final _ownerNationalIdController = TextEditingController();
  final _ownershipStatusController = TextEditingController();
  final _notesController = TextEditingController();

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
    _notesController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Add Customer',
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
                          labelText: 'Customer Type',
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
                            if (val == 'Non PKP') {
                              _ownerTaxIdController.text = '';
                            }
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
                        dropdownColor: Theme.of(context).colorScheme.surface,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Subscription Type',
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
              buildInputRow(
                controller: _requestDestinationController,
                label: 'Request Destination',
                validator: (value) {
                  return (value != null && value != '')
                      ? null
                      : 'Required Field';
                },
              ),
              buildInputRow(
                controller: _carbonCopyController,
                label: 'Carbon Copy',
                validator: (value) {
                  return (value != null && value != '')
                      ? null
                      : 'Required Field';
                },
              ),

              ExpansionTile(
                title: Text('Company Data', style: bodyStyle),
                children: [
                  // Store Image Picker
                  Center(child: Text('Store Picture', style: captionStyle)),
                  GestureDetector(
                    onTap: () async {
                      File? pickedImage = await pickImage();
                      if (pickedImage != null) {
                        setState(() {
                          _storePhoto = pickedImage;
                        });
                      }
                    },
                    child: Container(
                      width: 120.w,
                      height: 120.w,
                      decoration: photoBoxDecoration(context).copyWith(
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

                  buildInputRow(
                    controller: _companyNameController,
                    label: 'Company Name',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  buildInputRow(
                    controller: _companyAddressController,
                    label: 'Company Address',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  buildInputRow(
                    controller: _companyPhoneController,
                    label: 'Company Phone Number',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  _customerType != 'PKP'
                      ? buildInputRow(
                        controller: _companyTaxIdController,
                        label: 'Company Tax ID',
                        enabled:
                            _customerType == '' || _customerType == 'Non PKP',
                        validator: (value) {
                          if (_customerType == 'PKP') return null;
                          return (value != null && value != '')
                              ? null
                              : 'Required Field';
                        },
                      )
                      : const SizedBox.shrink(),
                  buildInputRow(
                    controller: _companyEmailController,
                    label: 'Company Email',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  buildInputRow(
                    controller: _storeConditionController,
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
                children: [
                  // KTP Photo
                  Center(child: Text('Owner ID Picture', style: captionStyle)),
                  GestureDetector(
                    onTap: () async {
                      File? pickedImage = await pickImage();

                      if (pickedImage != null) {
                        setState(() {
                          _ktpPhoto = pickedImage;
                        });
                      }
                    },
                    child: Container(
                      width: 120.w,
                      height: 120.w,
                      decoration: photoBoxDecoration(context).copyWith(
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

                  buildInputRow(
                    controller: _ownerNameController,
                    label: 'Owner Name',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  buildInputRow(
                    controller: _ownerAddressController,
                    label: 'Owner Address',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  buildInputRow(
                    controller: _ownerPhoneController,
                    label: 'Owner Phone Number',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  buildInputRow(
                    controller: _ownerNationalIdController,
                    label: 'Owner National ID',
                    validator: (value) {
                      return (value != null && value != '')
                          ? null
                          : 'Required Field';
                    },
                  ),
                  _customerType != 'Non PKP'
                      ? buildInputRow(
                        controller: _ownerTaxIdController,
                        label: 'Owner Tax ID',
                        enabled: _customerType == '' || _customerType == 'PKP',
                        validator: (value) {
                          if (_customerType == 'Non PKP') return null;
                          return (value != null && value != '')
                              ? null
                              : 'Required Field';
                        },
                      )
                      : const SizedBox.shrink(),

                  buildInputRow(
                    controller: _ownershipStatusController,
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

              buildInputRow(
                controller: _notesController,
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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 8.h, top: 8.h),
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _submitButtonEnabled
                  ? ElevatedButton(
                    onPressed: _submitButtonEnabled ? _submit : null,
                    child: Text('Add Customer', style: buttonStyle),
                  )
                  : const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() async {
    setState(() {
      _submitButtonEnabled = false;
    });
    // Validate to trigger warning
    _formKey.currentState?.validate();

    final storePhotoStatus = _storePhoto != null;
    final ktpPhotoStatus = _ktpPhoto != null;

    final customerTypeStatus = _customerType != null;
    final subscriptionTypeStatus = _subscriptionType != null;

    final requestDestinationFilled = _requestDestinationController.text != '';
    final carbonCopyFilled = _carbonCopyController.text != '';

    final companyNameFilled = _companyNameController.text != '';
    final companyAddressFilled = _companyAddressController.text != '';
    final companyPhoneFilled = _companyPhoneController.text != '';
    final companyTaxIdFilled =
        _customerType == 'PKP' ? true : (_companyTaxIdController.text != '');
    final companyEmailFilled = _companyEmailController.text != '';
    final storeConditionFilled = _storeConditionController.text != '';

    final ownerNameFilled = _ownerNameController.text != '';
    final ownerAddressFilled = _ownerAddressController.text != '';
    final ownerPhoneFilled = _ownerPhoneController.text != '';
    final ownerTaxIdFilled =
        _customerType == 'Non PKP' ? true : (_ownerTaxIdController.text != '');
    final ownerNationalIdFilled = _ownerNationalIdController.text != '';
    final ownershipStatusFilled = _ownershipStatusController.text != '';

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
        companyTaxIdFilled &&
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

            owner_name: _ownerNameController.text,
            owner_address: _ownerAddressController.text,
            owner_phone_number: _ownerPhoneController.text,
            owner_tax_id: _ownerTaxIdController.text,
            owner_national_id: _ownerNationalIdController.text,
            ownership_status: _ownershipStatusController.text,

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
        _notesController.text = '';

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
        final apiException = state.error as ApiException;

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
}
