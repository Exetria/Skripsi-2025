import 'package:android_app/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddVisitPage extends StatefulHookConsumerWidget {
  const AddVisitPage({super.key});

  @override
  ConsumerState<AddVisitPage> createState() => _AddVisitPageState();
}

class _AddVisitPageState extends ConsumerState<AddVisitPage> {
  // final _formKey = GlobalKey<FormState>();
  // final _customerController = TextEditingController();
  // final DateTime _selectedDate = DateTime.now();

  // void _pickDate() async {
  //   final picked = await showDatePicker(
  //     context: context,
  //     initialDate: _selectedDate,
  //     firstDate: DateTime(2023),
  //     lastDate: DateTime(2100),
  //   );
  //   if (picked != null) {
  //     setState(() => _selectedDate = picked);
  //   }
  // }

  // void _submit() {
  //   if (_formKey.currentState?.validate() ?? false) {
  //     print('Order added for ${_customerController.text}');
  //   }
  // }

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
        child: const Text('hello'),
      ),
    );
  }
}
