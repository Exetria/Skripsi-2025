import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';

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

  File? _visitPhoto; // Input
  String? _visitPhotoLink; // Input
  int? _selectedStatus; // Input
  final bool _submitButtonEnabled = true;
  final bool _pickVisitPhoto = true;
  final bool _isOldPhotoFound = true;
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

    return const Text('data');
  }
}
