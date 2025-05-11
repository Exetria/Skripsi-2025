import 'dart:io';

import 'package:android_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:android_app/utils/widget_settings.dart';
import 'package:android_app/visit_module/page/controller/update_visit_controller.dart';
import 'package:android_app/visit_module/page/controller/visit_list_controller.dart';
import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class VisitDetailPage extends StatefulHookConsumerWidget {
  DateTime date;
  List<Map<String, dynamic>> visitDataList;
  int index;

  VisitDetailPage({
    super.key,
    required this.date,
    required this.visitDataList,
    required this.index,
  });

  @override
  ConsumerState<VisitDetailPage> createState() => _VisitDetailPage();
}

class _VisitDetailPage extends ConsumerState<VisitDetailPage> {
  final _formKey = GlobalKey<FormState>();
  bool _submitButtonEnabled = true;
  bool _isoldPhotoFound = true;

  // Inputs
  int? selectedStatus;
  final TextEditingController _notesController = TextEditingController();
  File? visitPhoto;

  final Map<int, String> statusOptions = {
    1: 'Planned',
    2: 'Finished',
    3: 'Cancelled',
  };

  @override
  void initState() {
    super.initState();

    final statusString =
        widget.visitDataList[widget
            .index]['mapValue']?['fields']?['visit_status']?['integerValue'];

    selectedStatus = int.tryParse(statusString);
  }

  @override
  Widget build(BuildContext context) {
    final customerListState = ref.watch(customerListControllerProvider);

    String? visitNote =
        widget.visitDataList[widget
            .index]['mapValue']?['fields']?['visit_notes']?['stringValue'];

    String? visitPhotoLink =
        widget.visitDataList[widget
            .index]['mapValue']?['fields']?['visit_photo_url']?['stringValue'];

    if (visitNote != null) {
      _notesController.text = visitNote;
    }

    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: customerListState.when(
          loading: () => 'Loading...',
          data: (data) {
            return ref
                .read(customerListControllerProvider.notifier)
                .getCustomerName(
                  id:
                      widget.visitDataList[widget
                          .index]['mapValue']?['fields']?['customer_id']?['stringValue'] ??
                      '',
                );
          },
          error: (error, stackTrace) {
            ref.invalidate(customerListControllerProvider);
            return 'Error Loading Name';
          },
        ),
        subtitle: DateFormat.yMMMMd().format(widget.date),
        showLeftButton: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Status
              DropdownButtonFormField<int>(
                decoration: const InputDecoration(labelText: 'Status'),
                value: selectedStatus,
                items:
                    statusOptions.entries.map((entry) {
                      return DropdownMenuItem(
                        value: entry.key,
                        child: Text(entry.value, style: bodyStyle),
                      );
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedStatus = value;
                    if (selectedStatus == 1) {
                      visitPhoto = null;
                    }
                  });
                },
                validator:
                    (value) => value == null ? 'Please select a status' : null,
              ),
              SizedBox(height: 16.h),

              // Notes
              TextFormField(
                controller: _notesController,
                decoration: const InputDecoration(
                  labelText: 'Notes',
                  alignLabelWithHint: true,
                ),
                style: bodyStyle,
                maxLines: 4,
                validator:
                    (value) =>
                        value == null || value.trim().isEmpty
                            ? 'Notes are required'
                            : null,
              ),
              SizedBox(height: 16.h),

              // Image Upload (optional if status == 1)
              GestureDetector(
                onTap: selectedStatus != 1 ? _pickImage : null,
                child: AbsorbPointer(
                  absorbing: selectedStatus == 1,
                  child: Container(
                    height: 140.h,
                    width: double.infinity,
                    decoration: photoBoxDecoration(context).copyWith(
                      color:
                          selectedStatus == 1
                              ? dividerColor.withAlpha(40)
                              : null,
                    ),
                    child:
                        visitPhoto != null
                            ? ClipRRect(
                              borderRadius: BorderRadius.circular(16.r),
                              child: Image.file(
                                visitPhoto!,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            )
                            : visitPhotoLink != null
                            ? ClipRRect(
                              borderRadius: BorderRadius.circular(16.r),
                              child: Image.network(
                                visitPhotoLink,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                                errorBuilder: (context, error, stackTrace) {
                                  _isoldPhotoFound = false;
                                  return Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.broken_image_outlined,
                                          size: 32.sp,
                                          color: errorColor,
                                        ),
                                        SizedBox(height: 8.h),
                                        Text(
                                          'Image not found',
                                          style: errorStyle,
                                        ),
                                      ],
                                    ),
                                  );
                                },
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
                                    selectedStatus == 1
                                        ? 'Photo not required for Planned'
                                        : 'Tap to upload photo',
                                    style: captionStyle,
                                  ),
                                ],
                              ),
                            ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _submitButtonEnabled
                ? ElevatedButton(
                  onPressed:
                      _submitButtonEnabled
                          ? () async {
                            if (_formKey.currentState!.validate()) {
                              // Photo requirement safeguard
                              if (selectedStatus != 1 &&
                                  ((visitPhotoLink == null ||
                                          !_isoldPhotoFound) &&
                                      visitPhoto == null)) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Photo is required'),
                                  ),
                                );
                                return;
                              }

                              // Update item at index
                              final item = widget.visitDataList[widget.index];

                              final fields =
                                  item['mapValue']?['fields']
                                      as Map<String, dynamic>?;

                              if (fields != null) {
                                fields['visit_status'] = {
                                  'integerValue':
                                      (selectedStatus ?? 0).toString(),
                                };
                                fields['visit_notes'] = {
                                  'stringValue': _notesController.text,
                                };
                              }

                              // Disable submit button
                              setState(() {
                                _submitButtonEnabled = false;
                              });

                              // Update Firestore
                              await ref
                                  .read(updateVisitControllerProvider.notifier)
                                  .updateVisitData(
                                    date: widget.date,
                                    visitDataList: widget.visitDataList,
                                    updateLocationIndex: widget.index,
                                    visitPhoto: visitPhoto,
                                  );

                              // Refresh visit list
                              await ref
                                  .read(visitListControllerProvider.notifier)
                                  .fetchVisitsForDate(
                                    date: widget.date,
                                    forceFetch: true,
                                  );

                              // Enable submit button
                              setState(() {
                                _submitButtonEnabled = true;
                              });

                              // Back to visit list
                              Navigator.pop(context);
                            }
                          }
                          : null,
                  child: Text(
                    'Confirm',
                    style: buttonStyle.copyWith(color: invertedTextColor),
                  ),
                )
                : const CircularProgressIndicator(),
          ],
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
        visitPhoto = File(pickedFile.path);
      });
    }
  }
}
