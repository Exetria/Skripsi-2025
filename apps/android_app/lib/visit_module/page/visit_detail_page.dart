import 'dart:io';

import 'package:android_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:android_app/visit_module/page/controller/update_visit_controller.dart';
import 'package:android_app/visit_module/page/controller/visit_list_controller.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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

  final Map<int, String> _statusOptions = {
    1: 'Direncanakan',
    2: 'Selesai',
    3: 'Dibatalkan',
  };

  File? _visitPhoto;
  String? _visitPhotoLink;
  String _visitImageError = '';
  int? _selectedStatus;
  bool _submitButtonEnabled = true;
  bool _pickVisitPhoto = true;
  bool _isOldPhotoFound = true;
  late bool _editable;

  final _notesController = TextEditingController();

  @override
  void initState() {
    super.initState();

    addCallBackAfterBuild(
      callback: () {
        ref.read(customerListControllerProvider.notifier).resetSearch();
      },
    );

    // Init editable
    _editable =
        widget.visitDataList[widget
                .index]['mapValue']?['fields']?['visit_status']?['integerValue'] ==
            '1' ||
        widget.visitDataList[widget
                .index]['mapValue']?['fields']?['visit_status']?['integerValue'] ==
            null;

    // Init status
    final statusString =
        widget.visitDataList[widget
            .index]['mapValue']?['fields']?['visit_status']?['integerValue'];

    _selectedStatus = int.tryParse(statusString);

    // Init notes
    final visitNote =
        widget.visitDataList[widget
            .index]['mapValue']?['fields']?['visit_notes']?['stringValue'];
    if (visitNote != null && visitNote.isNotEmpty) {
      _notesController.text = visitNote;
    }

    // Init photo url
    _visitPhotoLink =
        widget.visitDataList[widget
            .index]['mapValue']?['fields']?['visit_photo_url']?['stringValue'];
  }

  @override
  void dispose() {
    _notesController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customerListState = ref.watch(customerListControllerProvider);

    String _customerId =
        widget.visitDataList[widget
            .index]['mapValue']?['fields']?['customer_id']?['stringValue'] ??
        '';

    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: customerListState.when(
          loading: () => 'Memuat...',
          data: (data) {
            return ref
                .read(customerListControllerProvider.notifier)
                .getCustomerName(id: _customerId);
          },
          error: (error, stackTrace) {
            ref.invalidate(customerListControllerProvider);
            return 'Gagal Memuat Nama';
          },
        ),
        subtitle: DateFormat.yMMMMd().format(widget.date),
        showLeftButton: true,
        rightButtonIcon: Icons.navigation,
        onRightPressed: () async {
          final position = await ref
              .read(customerListControllerProvider.notifier)
              .getCustomerLocation(id: _customerId);
          if (position != null) {
            launchGoogleMapNavigation(
              context: context,
              latitude: position.latitude,
              longitude: position.longitude,
            );
          }
        },
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
                value: _selectedStatus,
                items:
                    _statusOptions.entries.map((entry) {
                      return DropdownMenuItem(
                        value: entry.key,
                        child: Text(entry.value, style: bodyStyle),
                      );
                    }).toList(),
                onChanged:
                    _editable
                        ? (value) {
                          setState(() {
                            _selectedStatus = value;
                            if (_selectedStatus == 1) {
                              _visitPhoto = null;
                            }
                          });
                        }
                        : null,
                validator:
                    (value) => value == null ? 'Please select a status' : null,
              ),
              SizedBox(height: 16.h),

              // Notes
              buildInputBox(
                enabled: _editable,
                controller: _notesController,
                label: 'Keterangan (contoh: penagihan)',
                maxLines: 4,
                validator:
                    (value) =>
                        value == null || value.trim().isEmpty
                            ? 'Tidak Boleh Kosong'
                            : null,
              ),
              SizedBox(height: 32.h),

              // Image Upload (optional if status == 1)
              Center(
                child: GestureDetector(
                  onTap:
                      _editable && _selectedStatus != 1 && _pickVisitPhoto
                          ? () async {
                            _pickVisitPhoto = false;
                            final pickedImage = await pickImage(
                              context: context,
                            );

                            // If new image exist, refresh
                            if (pickedImage != null) {
                              setState(() {
                                _visitPhoto = pickedImage;
                                _visitImageError = '';
                              });
                            }
                            _pickVisitPhoto = true;
                          }
                          : null,
                  child: Container(
                    width: ScreenUtil().screenWidth * 0.8,
                    decoration: photoBoxDecoration(context).copyWith(
                      color:
                          _selectedStatus == 1
                              ? dividerColor.withAlpha(40)
                              : null,
                    ),
                    child: AspectRatio(
                      aspectRatio: 3 / 4,
                      child:
                          _visitPhoto != null
                              ? ClipRRect(
                                borderRadius: BorderRadius.circular(16.r),
                                child: Image.file(
                                  _visitPhoto!,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                  errorBuilder:
                                      (_, __, ___) =>
                                          imageErrorWidget(context: context),
                                ),
                              )
                              : _visitPhotoLink != null
                              ? ClipRRect(
                                borderRadius: BorderRadius.circular(16.r),
                                child: Image.network(
                                  _visitPhotoLink ?? '',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                  loadingBuilder: (_, child, progress) {
                                    if (progress == null) return child;
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  },
                                  errorBuilder: (_, __, ___) {
                                    _isOldPhotoFound = false;
                                    return imageErrorWidget(
                                      context: context,
                                      message: 'Gambar Tidak Ditemukan',
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
                                      color:
                                          _visitImageError.isEmpty
                                              ? dividerColor
                                              : Theme.of(
                                                context,
                                              ).colorScheme.error,
                                    ),
                                    SizedBox(height: 8.h),
                                    _visitImageError.isEmpty
                                        ? Text(
                                          _selectedStatus == 1
                                              ? 'Foto Tidak Diperlukan'
                                              : 'Ketuk untuk Mengambil Foto',
                                          style: captionStyle,
                                        )
                                        : Text(
                                          _visitImageError,
                                          style: captionStyle.copyWith(
                                            color:
                                                Theme.of(
                                                  context,
                                                ).colorScheme.error,
                                          ),
                                        ),
                                  ],
                                ),
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
                  onPressed: _editable ? _submit : null,
                  child: Text(
                    _editable ? 'Konfirmasi' : 'Tidak Dapat Diubah',
                    style: buttonStyle.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                )
                : const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }

  void _submit() async {
    {
      // Form validation safeguard
      if (!_formKey.currentState!.validate()) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Data Belum Lengkap')));

        // Set image error if visit photo is required
        if (_selectedStatus != 1 &&
            ((_visitPhotoLink == null || !_isOldPhotoFound) &&
                _visitPhoto == null)) {
          setState(() {
            _visitImageError = 'Foto harus diisi\nKetuk untuk Mengambil Foto';
          });
        }
        return;
      }

      // Photo requirement safeguard
      if (_selectedStatus != 1 &&
          ((_visitPhotoLink == null || !_isOldPhotoFound) &&
              _visitPhoto == null)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Foto Kunjungan Belum Diisi')),
        );

        setState(() {
          _visitImageError = 'Foto harus diisi\nKetuk untuk Mengambil Foto';
        });
        return;
      }

      // Update item at index
      final item = widget.visitDataList[widget.index];

      final fields = item['mapValue']?['fields'] as Map<String, dynamic>?;

      if (fields != null) {
        fields['visit_status'] = {
          'integerValue': (_selectedStatus ?? 0).toString(),
        };
        fields['visit_notes'] = {'stringValue': _notesController.text};
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
            visitPhoto: _selectedStatus != 1 ? _visitPhoto : null,
          );

      // Refresh visit list
      await ref
          .read(visitListControllerProvider.notifier)
          .fetchVisitsForDate(date: widget.date, forceFetch: true);

      // Enable submit button
      setState(() {
        _submitButtonEnabled = true;
      });

      // Back to visit list
      Navigator.pop(context);
    }
  }
}
