import 'dart:io';

import 'package:android_app/variables.dart';
import 'package:android_app/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class VisitDetailPage extends StatefulHookConsumerWidget {
  const VisitDetailPage({super.key});

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
        title: 'Visit Details',
        subtitle: '8 April 2025',
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdown
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Status',
                labelStyle: bodyStyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                filled: true,
                fillColor: fillColor,
              ),
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
              decoration: InputDecoration(
                labelText: 'Description',
                labelStyle: bodyStyle,
                alignLabelWithHint: true,
                filled: true,
                fillColor: fillColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: fillColor,
                  border: Border.all(color: dividerColor),
                ),
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
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  backgroundColor: primaryColor,
                ),
                child: Text(
                  'Confirm',
                  style: buttonStyle.copyWith(color: Colors.white),
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
