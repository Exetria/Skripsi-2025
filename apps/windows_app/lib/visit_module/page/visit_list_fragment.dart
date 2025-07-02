import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
import 'package:windows_app/utils/functions.dart';
import 'package:windows_app/utils/popups.dart';
import 'package:windows_app/visit_module/domain/entities/visit_domain.dart';
import 'package:windows_app/visit_module/page/controller/update_visit_controller.dart';
import 'package:windows_app/visit_module/page/controller/visit_list_controller.dart';

class VisitListFragment extends StatefulHookConsumerWidget {
  const VisitListFragment({super.key});

  @override
  ConsumerState<VisitListFragment> createState() => _VisitListFragment();
}

class _VisitListFragment extends ConsumerState<VisitListFragment> {
  DateTime currentDate = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime selectedDate = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  String viewedSalesId = '';
  String viewedsalesName = '';
  List<Marker> viewedMarkers = [];
  bool listViewEnabled = true;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref
          .read(visitListControllerProvider.notifier)
          .fetchAllSalesVisitsForDate(date: DateTime.now());
    });

    addCallBackAfterBuild(
      callback: () {
        ref.read(customerListControllerProvider.notifier).resetSearch();
        ref.read(userListControllerProvider.notifier).resetSearch();
        ref
            .read(userListControllerProvider.notifier)
            .changeRoleFilter(RoleFilter.sales);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final userListState = ref.watch(userListControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Daftar Kunjungan', style: titleStyle),
          const SizedBox(height: 10),

          _buildHeader(),
          const SizedBox(height: 12),

          // MAP & LIST
          listViewEnabled
              ? Expanded(
                child: userListState.when(
                  loading:
                      () => const Center(child: CircularProgressIndicator()),
                  data: (salesList) {
                    if (salesList == null || salesList.isEmpty) {
                      return Center(
                        child: Text(
                          'Data Sales Tidak Ditemukan',
                          style: bodyStyle,
                        ),
                      );
                    }

                    return LayoutBuilder(
                      builder: (context, constraints) {
                        final crossCount = _getVisitCrossAxisCount(constraints);
                        return GridView.builder(
                          padding: const EdgeInsets.only(top: 8),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: crossCount,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                childAspectRatio: getChildAspectRatio(
                                  constraints,
                                ),
                              ),
                          itemCount: salesList.length,
                          itemBuilder: (context, index) {
                            final data = salesList[index];

                            final salesId = getIdFromName(name: data.name);
                            final salesName =
                                data.fields?.fullName?.stringValue ?? '-';

                            return _buildVisitListCard(
                              salesId: salesId,
                              salesName: salesName,
                            );
                          },
                        );
                      },
                    );
                  },
                  error: (error, _) {
                    final exception = error as ApiException;
                    return Center(
                      child: Text(
                        'Gagal Memuat Daftar Sales: ${exception.message}',
                        style: errorStyle,
                      ),
                    );
                  },
                ),
              )
              : Expanded(
                child: Row(
                  children: [
                    Expanded(flex: 7, child: _buildMapSection()),
                    Expanded(flex: 3, child: _buildSalesVisitList()),
                  ],
                ),
              ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: ScreenUtil().screenWidth * 0.25,
              child: customSearchBar(
                context: context,
                hint: 'Cari Sales...',
                onChanged: (query) {
                  ref
                      .read(userListControllerProvider.notifier)
                      .searchUser(query);
                },
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: ScreenUtil().screenWidth * 0.25,
              child: _buildDateSelector(),
            ),

            const SizedBox(width: 16),

            IconButton(
              onPressed: () async {
                final DateTimeRange? pickedRange = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                  currentDate: DateTime.now(),
                  initialDateRange: DateTimeRange(
                    start: DateTime.now().subtract(const Duration(days: 7)),
                    end: DateTime.now(),
                  ),
                  helpText: 'Pilih Jangka Waktu',
                  cancelText: 'Tutup',
                  confirmText: 'Pilih',
                  saveText: 'Pilih',
                );

                if (pickedRange != null) {
                  final String message = await ref
                      .read(visitListControllerProvider.notifier)
                      .exportVisitData(pickedRange);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(message, style: bodyStyle)),
                  );
                }
              },
              icon: const Icon(Icons.download),
              tooltip: 'Ekspor',
            ),

            const SizedBox(width: 8),

            IconButton(
              onPressed: _refreshVisitList,
              icon: const Icon(Icons.refresh),
              tooltip: 'Segarkan',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDateSelector() {
    return SizedBox(
      height: 50,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => _changeDate(-1),
              icon: Icon(
                Icons.chevron_left,
                size: 24,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () async {
                  final DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    helpText: 'Pilih Tanggal',
                    cancelText: 'Tutup',
                    confirmText: 'Pilih',
                  );

                  if (pickedDate != null && pickedDate != selectedDate) {
                    setState(() {
                      selectedDate = pickedDate;
                    });
                    ref
                        .read(visitListControllerProvider.notifier)
                        .fetchAllSalesVisitsForDate(date: selectedDate);
                  }
                },
                child: Center(
                  child: Text(
                    DateFormat.yMMMMd().format(selectedDate),
                    style: bodyStyle,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: () => _changeDate(1),
              icon: Icon(
                Icons.chevron_right,
                size: 24,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMapSection() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: FlutterMap(
                options: const MapOptions(
                  initialCenter: LatLng(-7.2960801, 112.738667),
                  initialZoom: 13,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  ),
                  MarkerLayer(markers: viewedMarkers),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSalesVisitList() {
    if (viewedSalesId.isEmpty || viewedsalesName.isEmpty) {
      return Center(
        child: Text('Tidak ada Sales yang Dipilih', style: bodyStyle),
      );
    }

    final visitListState = ref.watch(visitListControllerProvider);
    List<Map<String, dynamic>> visitDataList = [];

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person,
                        size: 32,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        viewedsalesName,
                        style: subtitleStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Spacer(),
                      !listViewEnabled
                          ? IconButton(
                            onPressed: () {
                              // Reset viewed sales and visit data
                              viewedSalesId = '';
                              viewedsalesName = '';
                              viewedMarkers = [];
                              _switchPageView();
                            },
                            icon: const Icon(Icons.close),
                            tooltip: 'Kembali ke Daftar Kunjungan Sales',
                          )
                          : const SizedBox.shrink(),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: visitListState.when(
                      loading: () {
                        viewedMarkers.clear();
                        return const Center(child: CircularProgressIndicator());
                      },
                      data: (visitDayData) {
                        final visitList =
                            visitDayData['$viewedSalesId-${_generateVisitIdFromDate(selectedDate)}'];

                        // If empty or null, show empty state
                        if (visitList == null || visitList.isLeft()) {
                          final error = visitList?.swap().getOrElse(
                            (l) => ApiException(
                              statusCode: -1,
                              message: 'Terjadi Kesalahan',
                            ),
                          );

                          return Center(
                            child:
                                error != null
                                    ? (error).statusCode == 404
                                        ? const Text(
                                          'Data Kunjungan Tidak Ditemukan',
                                        )
                                        : const Text(
                                          'Gagal Memuat Data Kunjungan',
                                        )
                                    : const Text('Gagal Memuat Data Kunjungan'),
                          );
                        }

                        // get the visit data
                        final VisitDomain? data = visitList.getOrElse(
                          (error) => null,
                        );

                        if (data == null) {
                          return const Center(
                            child: Text('Data Visit Tidak Ditemukan'),
                          );
                        }

                        // Get visit data (list of visit in a day)
                        List<Value> visits = List<Value>.from(
                          data.fields?.visits?.arrayValue?.values ?? [],
                        );

                        // Convert into List<Map<String, dynamic>>
                        visitDataList = _createVisitDataList(visits: visits);

                        // Populate viewed markers
                        populateViewedMarkers(visitDataList: visitDataList);

                        if (visitDataList.isEmpty) {
                          return const Center(
                            child: Text('Data Visit Tidak Ditemukan'),
                          );
                        }

                        return ListView.separated(
                          itemCount: visitDataList.length,
                          separatorBuilder:
                              (context, index) => const SizedBox(height: 12),
                          itemBuilder: (context, index) {
                            final visitData = visitDataList[index];
                            final customerId =
                                visitData['mapValue']['fields']['customer_id']['stringValue'];
                            final visitStatus =
                                visitData['mapValue']['fields']['visit_status']['integerValue'];

                            return _createVisitTile(
                              salesId: viewedSalesId,
                              customerId: customerId,
                              visitStatus:
                                  visitStatus == '1'
                                      ? 'Direncanakan'
                                      : visitStatus == '2'
                                      ? 'Selesai'
                                      : visitStatus == '3'
                                      ? 'Dibatalkan'
                                      : 'Tidak Tersedia',
                              salesName: viewedsalesName,
                              index: index,
                              visitDataList: visitDataList,
                            );
                          },
                        );
                      },
                      error: (error, _) {
                        viewedMarkers.clear();

                        final exception = error as ApiException;
                        return Center(
                          child: Text(
                            'Gagal Memuat Daftar Kunjungan: ${exception.message}',
                            style: errorStyle,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed:
                            selectedDate.isBefore(currentDate)
                                ? null
                                : () {
                                  showAddVisitPopup(
                                    context: context,
                                    salesId: viewedSalesId,
                                    salesName: viewedsalesName,
                                    visitDataList: visitDataList,
                                  );
                                },
                        icon: const Icon(Icons.add),
                        tooltip: 'Tambah Kunjungan untuk Sales Ini',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVisitListCard({
    required String salesId,
    required String salesName,
  }) {
    final visitListState = ref.watch(visitListControllerProvider);

    List<Map<String, dynamic>> visitDataList = [];
    bool isHovered = false;

    return hoverableCard(
      context: context,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.person,
                  size: 32,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Text(
                  salesName,
                  style: subtitleStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Expanded(
              child: visitListState.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                data: (visitDayData) {
                  final visitList =
                      visitDayData['$salesId-${_generateVisitIdFromDate(selectedDate)}'];

                  // If empty or null, show empty state
                  if (visitList == null || visitList.isLeft()) {
                    final error = visitList?.swap().getOrElse(
                      (l) => ApiException(
                        statusCode: -1,
                        message: 'Terjadi Kesalahan',
                      ),
                    );

                    return Center(
                      child:
                          error != null
                              ? (error).statusCode == 404
                                  ? const Text('Data Kunjungan Tidak Ditemukan')
                                  : const Text('Gagal Memuat Data Kunjungan')
                              : const Text('Gagal Memuat Data Kunjungan'),
                    );
                  }

                  // get the visit data
                  final VisitDomain? data = visitList.getOrElse(
                    (error) => null,
                  );

                  if (data == null) {
                    return const Center(
                      child: Text('Data Visit Tidak Ditemukan'),
                    );
                  }

                  // Get visit data (list of visit in a day)
                  List<Value> visits = List<Value>.from(
                    data.fields?.visits?.arrayValue?.values ?? [],
                  );

                  // Convert into List<Map<String, dynamic>>
                  visitDataList = _createVisitDataList(visits: visits);

                  if (visitDataList.isEmpty) {
                    return const Center(
                      child: Text('Data Visit Tidak Ditemukan'),
                    );
                  }

                  return ListView.separated(
                    itemCount: visitDataList.length,
                    separatorBuilder:
                        (context, index) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final visitData = visitDataList[index];
                      final customerId =
                          visitData['mapValue']['fields']['customer_id']['stringValue'];
                      final visitStatus =
                          visitData['mapValue']['fields']['visit_status']['integerValue'];

                      return _createVisitTile(
                        salesId: salesId,
                        customerId: customerId,
                        visitStatus: visitStatus,
                        salesName: salesName,
                        index: index,
                        visitDataList: visitDataList,
                      );
                    },
                  );
                },
                error: (error, _) {
                  final exception = error as ApiException;
                  return Center(
                    child: Text(
                      'Gagal Memuat Daftar Kunjungan: ${exception.message}',
                      style: errorStyle,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    // Sales visit list set in the card builder
                    viewedSalesId = salesId;
                    viewedsalesName = salesName;
                    _switchPageView();
                  },
                  icon: const Icon(Icons.map),
                  tooltip: 'Lihat di Peta',
                ),

                const SizedBox(width: 12),

                IconButton(
                  onPressed:
                      selectedDate.isBefore(currentDate)
                          ? null
                          : () {
                            showAddVisitPopup(
                              context: context,
                              salesId: salesId,
                              salesName: viewedsalesName,
                              visitDataList: visitDataList,
                            );
                          },
                  icon: const Icon(Icons.add),
                  tooltip: 'Tambah Kunjungan untuk Sales Ini',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _createVisitTile({
    required String salesId,
    required String customerId,
    required String visitStatus,
    required String salesName,
    required int index,
    required List<Map<String, dynamic>> visitDataList,
  }) {
    final customerListState = ref.watch(customerListControllerProvider);

    String customerName = customerListState.when(
      loading: () => 'Memuat...',
      data: (customerList) {
        return ref
            .read(customerListControllerProvider.notifier)
            .getCustomerName(id: customerId);
      },
      error: (error, stackTrace) {
        _refreshCustomerList();
        return 'Gagal Memuat Nama';
      },
    );
    return hoverableCard(
      context: context,
      child: InkWell(
        onTap: () {
          showUpdateVisitDataPopup(
            context: context,
            salesId: salesId,
            salesName: salesName,
            customerName: customerName,
            index: index,
            visitDataList: visitDataList,
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(customerName),
            Text(
              getVisitStatusText(visitStatus: visitStatus),
              style: bodyStyle.copyWith(
                color: getVisitStatusColor(
                  context: context,
                  visitStatus: visitStatus,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showAddVisitPopup({
    required BuildContext context,
    required String salesId,
    required String salesName,
    required List<Map<String, dynamic>> visitDataList,
  }) async {
    final customerListState = ref.watch(customerListControllerProvider);

    TextEditingController _customerIdController = TextEditingController();
    String? _selectedCustomerId;

    bool dialogActionButtonEnabled = true;

    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (statefulBuilderContext, setDialogState) {
            void addVisitData() async {
              setDialogState(() {
                dialogActionButtonEnabled = false;
              });

              visitDataList.add({
                'mapValue': {
                  'fields': {
                    'customer_id': {
                      'stringValue': getIdFromName(name: _selectedCustomerId),
                    },
                    'visit_status': {'integerValue': '1'},
                    'visit_notes': {'stringValue': ''},
                  },
                },
              });

              // Submit new visit data
              final submitState = await ref
                  .read(updateVisitControllerProvider.notifier)
                  .updateVisitData(
                    salesId: salesId,
                    date: selectedDate,
                    visitDataList: visitDataList,
                  );

              if (submitState is AsyncData) {
                showFeedbackDialog(
                  context: context,
                  type: 1,
                  message: 'Kunjungan berhasil ditambahkan',
                  onClose: () {
                    // Refresh visit list
                    ref
                        .read(visitListControllerProvider.notifier)
                        .fetchSalesVisitsForDate(
                          salesId: salesId,
                          date: selectedDate,
                          forceFetch: true,
                        );
                    Navigator.pop(statefulBuilderContext);
                  },
                );
              } else if (submitState is AsyncError) {
                final apiException = submitState.error as ApiException;
                showFeedbackDialog(
                  context: context,
                  type: 0,
                  message:
                      'Gagal menambahkan kunjungan: ${apiException.message}',
                );
              } else {
                showFeedbackDialog(
                  context: context,
                  type: 0,
                  message: 'Gagal menambahkan kunjungan',
                );
              }
              setDialogState(() {
                dialogActionButtonEnabled = true;
              });
            }

            return AlertDialog(
              title: Center(
                child: Text(
                  'Tambah Kunjungan untuk $salesName',
                  style: subtitleStyle,
                ),
              ),
              content: SizedBox(
                width: ScreenUtil().screenWidth * 0.4,
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          readOnly: true,
                          controller: _customerIdController,
                          decoration: InputDecoration(
                            labelText: 'Pilih Pelanggan',
                            fillColor: Theme.of(context).colorScheme.surface,
                          ),
                          validator: (_) {
                            return _selectedCustomerId == null
                                ? 'Tidak Boleh Kosong'
                                : null;
                          },
                          onTap: () async {
                            // get selected customer Id
                            final newSelectedId =
                                await showCustomerSelectorPopup(
                                  ref: ref,
                                  context: context,
                                );

                            // if selected id exist, update
                            if (newSelectedId != null && mounted) {
                              setState(() {
                                _selectedCustomerId = newSelectedId;

                                _customerIdController
                                    .text = customerListState.when(
                                  loading: () => 'Memuat...',
                                  data: (data) {
                                    return ref
                                        .read(
                                          customerListControllerProvider
                                              .notifier,
                                        )
                                        .getCustomerName(
                                          id: _selectedCustomerId ?? '',
                                        );
                                  },
                                  error: (error, stackTrace) {
                                    ref.invalidate(
                                      customerListControllerProvider,
                                    );
                                    return 'Gagal Memuat Nama';
                                  },
                                );
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox.shrink(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor:
                                Theme.of(
                                  statefulBuilderContext,
                                ).colorScheme.onSurface,
                          ),
                          onPressed:
                              dialogActionButtonEnabled
                                  ? () {
                                    Navigator.pop(statefulBuilderContext);
                                  }
                                  : null,
                          child: const Text('Tutup'),
                        ),
                        const SizedBox(width: 12),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(
                                  statefulBuilderContext,
                                ).colorScheme.tertiary,
                            foregroundColor:
                                Theme.of(
                                  statefulBuilderContext,
                                ).colorScheme.onTertiary,
                          ),
                          onPressed:
                              dialogActionButtonEnabled ? addVisitData : null,
                          child: const Text('Tambah'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }

  Future<void> showUpdateVisitDataPopup({
    required BuildContext context,
    required String salesId,
    required String salesName,
    required String customerName,
    required int index,
    required List<Map<String, dynamic>> visitDataList,
  }) async {
    final _updateVisitFormKey = GlobalKey<FormState>();

    File? _visitPhoto;
    String? _visitPhotoLink;
    String? _visitImageError;

    TextEditingController _notesController = TextEditingController();
    int? _selectedStatus;

    bool dialogActionButtonEnabled = true;

    // Init status
    final statusString =
        visitDataList[index]['mapValue']?['fields']?['visit_status']?['integerValue'];
    _selectedStatus = int.tryParse(statusString);

    // Init notes
    final visitNote =
        visitDataList[index]['mapValue']?['fields']?['visit_notes']?['stringValue'];
    if (visitNote != null && visitNote.isNotEmpty) {
      _notesController.text = visitNote;
    }

    // Init photo url
    _visitPhotoLink =
        visitDataList[index]['mapValue']?['fields']?['visit_photo_url']?['stringValue'];

    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (statefulBuilderContext, setDialogState) {
            Future<void> pickImage() async {
              // Safeguard if dialog closed
              if (statefulBuilderContext.mounted == false) return;

              // Pick image
              final result = await FilePicker.platform.pickFiles(
                type: FileType.image,
                withData: true,
              );
              if (result == null) return;
              if (result.files.single.path == null) {
                setDialogState(() => _visitImageError = 'Gagal membaca file');
                return;
              }
              // If dialog still mounted, display image
              if (statefulBuilderContext.mounted) {
                setDialogState(() {
                  _visitPhoto = File(result.files.single.path ?? '');
                  _visitImageError = null;
                });
              }
            }

            void updateVisitData() async {
              setDialogState(() {
                dialogActionButtonEnabled = false;
              });

              if (_updateVisitFormKey.currentState?.validate() ?? false) {
                final item = visitDataList[index];

                final fields =
                    item['mapValue']?['fields'] as Map<String, dynamic>?;

                if (fields != null) {
                  fields['visit_status'] = {
                    'integerValue': (_selectedStatus ?? 0).toString(),
                  };
                  fields['visit_notes'] = {
                    'stringValue': _notesController.text,
                  };
                }

                // Update Firestore
                await ref
                    .read(updateVisitControllerProvider.notifier)
                    .updateVisitData(
                      salesId: salesId,
                      date: selectedDate,
                      visitDataList: visitDataList,
                      updateLocationIndex: index,
                      visitPhoto: _selectedStatus != 1 ? _visitPhoto : null,
                    );

                // Refresh visit list
                await ref
                    .read(visitListControllerProvider.notifier)
                    .fetchSalesVisitsForDate(
                      salesId: salesId,
                      date: selectedDate,
                      forceFetch: true,
                    );

                Navigator.pop(statefulBuilderContext);
              }

              setDialogState(() {
                dialogActionButtonEnabled = true;
              });
            }

            return AlertDialog(
              title: Center(
                child: Text(
                  'Perbarui Kunjungan $salesName ke $customerName',
                  style: subtitleStyle,
                ),
              ),
              content: SizedBox(
                width: ScreenUtil().screenWidth * 0.4,
                child: SingleChildScrollView(
                  child: Form(
                    key: _updateVisitFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Store photo
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              pickImage();
                            },
                            child: Container(
                              width: ScreenUtil().screenWidth * 0.3,
                              decoration: photoBoxDecoration(
                                statefulBuilderContext,
                              ),
                              child: AspectRatio(
                                aspectRatio: 16 / 9,
                                child:
                                    _visitPhoto != null
                                        ? ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                          child: Image.file(
                                            _visitPhoto ?? File(''),
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: double.infinity,
                                            errorBuilder:
                                                (_, __, ___) =>
                                                    imageErrorWidget(
                                                      context: context,
                                                    ),
                                          ),
                                        )
                                        : _visitPhoto == null &&
                                            _visitPhotoLink != null &&
                                            _visitPhotoLink.isNotEmpty
                                        ? ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                          child: Image.network(
                                            _visitPhotoLink,
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: double.infinity,
                                            loadingBuilder: (
                                              _,
                                              child,
                                              progress,
                                            ) {
                                              if (progress == null) {
                                                return child;
                                              }
                                              return const Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            },
                                            errorBuilder: (_, __, ___) {
                                              return imageErrorWidget(
                                                context: context,
                                              );
                                            },
                                          ),
                                        )
                                        : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.camera_alt_outlined,
                                              size: 64,
                                              color:
                                                  Theme.of(
                                                    context,
                                                  ).colorScheme.outline,
                                            ),
                                            const SizedBox(height: 8),
                                            _visitImageError != null
                                                ? Text(
                                                  _visitImageError!,
                                                  style: errorStyle,
                                                )
                                                : Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Klik untuk Memilih Gambar',
                                                      style: captionStyle,
                                                    ),
                                                  ],
                                                ),
                                          ],
                                        ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),

                        // Visit Status
                        DropdownButtonFormField<int>(
                          value: _selectedStatus,
                          dropdownColor: Theme.of(context).colorScheme.surface,
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          decoration: const InputDecoration(
                            labelText: 'Status Pesanan',
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 14,
                            ),
                          ),
                          items: [
                            DropdownMenuItem(
                              value: 1,
                              child: Text(
                                getVisitStatusText(visitStatus: '1'),
                                style: bodyStyle.copyWith(
                                  color: getVisitStatusColor(
                                    context: context,
                                    visitStatus: '1',
                                  ),
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 2,
                              child: Text(
                                getVisitStatusText(visitStatus: '2'),
                                style: bodyStyle.copyWith(
                                  color: getVisitStatusColor(
                                    context: context,
                                    visitStatus: '2',
                                  ),
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 3,
                              child: Text(
                                getVisitStatusText(visitStatus: '3'),
                                style: bodyStyle.copyWith(
                                  color: getVisitStatusColor(
                                    context: context,
                                    visitStatus: '3',
                                  ),
                                ),
                              ),
                            ),
                          ],
                          onChanged: (val) {
                            setDialogState(() {
                              _selectedStatus = val;
                            });
                          },
                          validator: (value) {
                            return value == null ? 'Tidak Boleh Kosong' : null;
                          },
                        ),
                        const SizedBox(height: 16),

                        // Notes
                        buildInputBox(
                          controller: _notesController,
                          label: 'Keterangan',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Tidak Boleh Kosong';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              actions: [
                const SizedBox.shrink(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox.shrink(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor:
                                Theme.of(
                                  statefulBuilderContext,
                                ).colorScheme.onSurface,
                          ),
                          onPressed:
                              dialogActionButtonEnabled
                                  ? () {
                                    Navigator.pop(statefulBuilderContext);
                                  }
                                  : null,
                          child: const Text('Tutup'),
                        ),
                        const SizedBox(width: 12),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(
                                  statefulBuilderContext,
                                ).colorScheme.tertiary,
                            foregroundColor:
                                Theme.of(
                                  statefulBuilderContext,
                                ).colorScheme.onTertiary,
                          ),
                          onPressed:
                              dialogActionButtonEnabled
                                  ? updateVisitData
                                  : null,
                          child: const Text('Perbarui'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }

  List<Map<String, dynamic>> _createVisitDataList({
    required List<Value> visits,
  }) {
    List<Map<String, dynamic>> result = [];
    for (var visit in visits) {
      // Base visit data
      Map<String, dynamic> newMap = {
        'mapValue': {
          'fields': {
            'customer_id': {
              'stringValue':
                  visit.mapValue?.fields?.customerId?.stringValue ?? '',
            },
            'visit_status': {
              'integerValue':
                  visit.mapValue?.fields?.visitStatus?.integerValue ?? 0,
            },
            'visit_notes': {
              'stringValue':
                  visit.mapValue?.fields?.visitNotes?.stringValue ?? '',
            },
          },
        },
      };

      // If photo exist, save it
      String? photoUrl = visit.mapValue?.fields?.visitPhotoUrl?.stringValue;
      if (photoUrl != null) {
        newMap['mapValue']['fields']['visit_photo_url'] = {
          'stringValue': photoUrl,
        };
      }

      final locationFields = visit.mapValue?.fields?.location?.mapValue?.fields;
      final lat = locationFields?.latitude?.doubleValue;
      final lng = locationFields?.longitude?.doubleValue;
      final acc = locationFields?.accuracy?.doubleValue;

      // If location not set, do not include
      if (lat != null && lng != null && acc != null) {
        newMap['mapValue']['fields']['location'] = {
          'mapValue': {
            'fields': {
              'latitude': {'doubleValue': lat},
              'longitude': {'doubleValue': lng},
              'accuracy': {'doubleValue': acc},
            },
          },
        };
      }

      // Add visit data to list
      result.add(newMap);
    }
    return result;
  }

  String _generateVisitIdFromDate(DateTime date) {
    final formattedDate =
        '${date.day.toString().padLeft(2, '0')}${date.month.toString().padLeft(2, '0')}${date.year}';
    return formattedDate;
  }

  int _getVisitCrossAxisCount(BoxConstraints constraints) {
    final width = constraints.maxWidth;

    if (width > 2000) {
      return 2;
    } else if (width > 1500) {
      return 2;
    } else if (width > 1000) {
      return 2;
    } else if (width > 500) {
      return 1;
    } else {
      return 1;
    }
  }

  Future<void> _refreshVisitList() async {
    ref
        .read(visitListControllerProvider.notifier)
        .fetchAllSalesVisitsForDate(date: selectedDate, forceFetch: true);
  }

  Future<void> _refreshCustomerList() async {
    ref.invalidate(customerListControllerProvider);
  }

  Future<void> populateViewedMarkers({
    required List<Map<String, dynamic>> visitDataList,
  }) async {
    if (viewedMarkers.isNotEmpty) {
      return;
    }

    for (int i = 0; i < visitDataList.length; i++) {
      final customerId =
          visitDataList[i]['mapValue']['fields']['customer_id']['stringValue'];
      final customerLocation = await ref
          .read(customerListControllerProvider.notifier)
          .getCustomerLocation(id: customerId);

      if (customerLocation == null) continue;

      viewedMarkers.add(
        Marker(
          width: 40,
          height: 40,
          point: LatLng(customerLocation.latitude, customerLocation.longitude),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.location_on,
              color: Theme.of(context).colorScheme.primary,
              size: 32,
            ),
            tooltip: 'Kunjungan ke-${i + 1}',
          ),
        ),
      );
    }

    // Refresh map with new markers
    setState(() {});
  }

  void _switchPageView() {
    setState(() {
      listViewEnabled = !listViewEnabled;
    });
  }

  void _changeDate(int offset) {
    setState(() {
      viewedMarkers.clear();
      selectedDate = selectedDate.add(Duration(days: offset));
    });
    ref
        .read(visitListControllerProvider.notifier)
        .fetchAllSalesVisitsForDate(date: selectedDate);
  }
}
