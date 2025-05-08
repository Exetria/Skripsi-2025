import 'dart:io';

import 'package:android_app/utils/functions.dart';
import 'package:android_app/utils/widget_settings.dart';
import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class VisitDetailPage extends StatefulHookConsumerWidget {
  final Value data;

  const VisitDetailPage({super.key, required this.data});

  @override
  ConsumerState<VisitDetailPage> createState() => _VisitDetailPage();
}

class _VisitDetailPage extends ConsumerState<VisitDetailPage> {
  String? selectedOption;
  final TextEditingController _descriptionController = TextEditingController();
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Visit Details',
        subtitle: '8 April 2025',
        showLeftButton: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdown
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Status'),
              value: selectedOption,
              items:
                  ['Pending', 'In Progress', 'Done', 'Delayed']
                      .map(
                        (option) => DropdownMenuItem(
                          value: option,
                          child: Text(option, style: bodyStyle),
                        ),
                      )
                      .toList(),
              onChanged: (value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
            SizedBox(height: 16.h),

            // Description
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
                alignLabelWithHint: true,
              ),
              style: bodyStyle,
              maxLines: 4,
            ),
            SizedBox(height: 16.h),

            // Image Upload
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                height: 140.h,
                width: double.infinity,
                decoration: photoBoxDecoration(context),
                child:
                    selectedImage != null
                        ? ClipRRect(
                          borderRadius: BorderRadius.circular(16.r),
                          child: Image.file(
                            selectedImage!,
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
                              Text('Tap to upload photo', style: captionStyle),
                            ],
                          ),
                        ),
              ),
            ),
            SizedBox(height: 80.h),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: tertiaryColor,
        elevation: 8,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  // TODO: Confirm logic
                },
                child: Text(
                  'Confirm',
                  style: buttonStyle.copyWith(color: invertedTextColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickImage({bool fromCamera = true}) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: fromCamera ? ImageSource.camera : ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
      });
    }
  }
}
