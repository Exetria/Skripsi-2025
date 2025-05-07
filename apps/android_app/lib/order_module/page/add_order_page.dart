import 'package:android_app/utils/functions.dart';
import 'package:android_app/utils/widget_settings.dart';
import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class AddOrderPage extends StatefulHookConsumerWidget {
  const AddOrderPage({super.key});

  @override
  ConsumerState<AddOrderPage> createState() => _AddOrderPageState();
}

class _AddOrderPageState extends ConsumerState<AddOrderPage> {
  final _formKey = GlobalKey<FormState>();
  final _customerController = TextEditingController();
  final _productController = TextEditingController();
  final _notesController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  void _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() => _selectedDate = picked);
    }
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: Save order to Firebase
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Add Order',
        showLeftButton: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Customer Name
              _buildInputField(
                controller: _customerController,
                label: 'Customer Name',
                validator:
                    (v) =>
                        v == null || v.isEmpty
                            ? 'Customer name is required'
                            : null,
              ),

              // Order Date Picker
              GestureDetector(
                onTap: _pickDate,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 14.h,
                  ),
                  margin: EdgeInsets.only(bottom: 16.h),
                  decoration: regularBoxDecoration(context),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 20.sp,
                        color: textColor.withAlpha(178),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        DateFormat('yyyy-MM-dd').format(_selectedDate),
                        style: bodyStyle.copyWith(fontSize: 16.sp),
                      ),
                    ],
                  ),
                ),
              ),

              // Products
              _buildInputField(
                controller: _productController,
                label: 'Products (comma-separated)',
                validator:
                    (v) =>
                        v == null || v.isEmpty
                            ? 'Please add at least one product'
                            : null,
              ),

              // Notes (optional)
              _buildInputField(
                controller: _notesController,
                label: 'Additional Notes',
                maxLines: 3,
              ),

              SizedBox(height: 24.h),

              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _submit,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    foregroundColor: backgroundColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.w,
                      vertical: 14.h,
                    ),
                  ),
                  child: Text(
                    'Add Order',
                    style: buttonStyle.copyWith(fontSize: 16.sp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required String label,
    String? Function(String?)? validator,
    TextInputType keyboardType = TextInputType.text,
    int maxLines = 1,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        validator: validator,
        decoration: regularInputDecoration(context, label, hintStyle),
      ),
    );
  }
}
