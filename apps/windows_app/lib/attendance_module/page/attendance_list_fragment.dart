import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:windows_app/attendance_module/page/controller/attendance_list_controller.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

class AttendanceListFragment extends StatefulHookConsumerWidget {
  const AttendanceListFragment({super.key});

  @override
  ConsumerState<AttendanceListFragment> createState() =>
      _AttendanceListFragment();
}

class _AttendanceListFragment extends ConsumerState<AttendanceListFragment> {
  DateTime selectedDate = DateTime.now();
  List<Marker> attendanceMarkers = [];
  String? focusedSalesId;
  String? focusedSalesName;

  @override
  void initState() {
    super.initState();

    addCallBackAfterBuild(
      callback: () {
        ref.read(userListControllerProvider.notifier).resetSearch();
        ref
            .read(userListControllerProvider.notifier)
            .changeRoleFilter(RoleFilter.sales);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Daftar Kehadiran', style: titleStyle),
          const SizedBox(height: 10),

          _buildHeader(),
          const SizedBox(height: 12),

          // MAP & LIST
          Expanded(
            child: Row(
              children: [
                Expanded(flex: 7, child: _buildMapSection()),
                Expanded(flex: 3, child: _buildSalesList()),
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
            const SizedBox(width: 16),

            focusedSalesId != null &&
                    focusedSalesId!.isNotEmpty &&
                    focusedSalesName != null &&
                    focusedSalesName!.isNotEmpty
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      focusedSalesId = null;
                      focusedSalesName = null;
                      attendanceMarkers.clear();
                    });
                  },
                  icon: const Icon(Icons.close),
                  tooltip: 'Batalkan Fokus Sales',
                )
                : const SizedBox.shrink(),

            focusedSalesId != null &&
                    focusedSalesId!.isNotEmpty &&
                    focusedSalesName != null &&
                    focusedSalesName!.isNotEmpty
                ? const SizedBox(width: 16)
                : const SizedBox.shrink(),

            focusedSalesId != null &&
                    focusedSalesId!.isNotEmpty &&
                    focusedSalesName != null &&
                    focusedSalesName!.isNotEmpty
                ? Text(
                  'Sedang Melihat Kehadiran: $focusedSalesName',
                  style: bodyStyle,
                )
                : const SizedBox.shrink(),
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
              onPressed: () {
                setState(() {
                  attendanceMarkers.clear();
                  focusedSalesId = null;
                  focusedSalesName = null;
                });
                _refreshAttendanceList();
              },
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
                      attendanceMarkers.clear();
                      focusedSalesId = null;
                      focusedSalesName = null;
                      selectedDate = pickedDate;
                    });
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
    bool isFocused =
        focusedSalesId != null &&
        focusedSalesId!.isNotEmpty &&
        focusedSalesName != null &&
        focusedSalesName!.isNotEmpty;
    List<Marker> salesMarkers = [];

    if (isFocused) {
      salesMarkers = ref
          .read(attendanceListControllerProvider.notifier)
          .getSalesAttendanceMarkers(
            salesId: focusedSalesId ?? '',
            salesName: focusedSalesName ?? '',
            date: selectedDate,
            checkInColor: Theme.of(context).colorScheme.tertiary,
            checkOutColor: Theme.of(context).colorScheme.tertiaryContainer,
          );
    }

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
                  MarkerLayer(
                    markers: isFocused ? salesMarkers : attendanceMarkers,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSalesList() {
    final userListState = ref.watch(userListControllerProvider);
    final attendanceListState = ref.watch(attendanceListControllerProvider);

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
                      Text(
                        'Daftar Sales',
                        style: subtitleStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: attendanceListState.when(
                      loading: () {
                        attendanceMarkers.clear();
                        return const Center(child: CircularProgressIndicator());
                      },
                      data: (attendanceList) {
                        return userListState.when(
                          loading: () {
                            attendanceMarkers.clear();
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          data: (salesList) {
                            if (salesList == null || salesList.isEmpty) {
                              return Center(
                                child: Text(
                                  'Data Pengguna Tidak Ditemukan',
                                  style: bodyStyle,
                                ),
                              );
                            }

                            // Populate markers for all sales
                            populateAttendanceMarker(salesList: salesList);

                            return ListView.separated(
                              itemCount: salesList.length,
                              separatorBuilder:
                                  (context, index) =>
                                      const SizedBox(height: 12),
                              itemBuilder: (context, index) {
                                String salesId = getIdFromName(
                                  name: salesList[index].name,
                                );

                                String salesName =
                                    salesList[index]
                                        .fields
                                        ?.userName
                                        ?.stringValue ??
                                    '';

                                // Get attendance status
                                String attendanceStatus = attendanceListState
                                    .when(
                                      loading: () => 'Memuat...',
                                      data: (data) {
                                        return ref
                                            .read(
                                              attendanceListControllerProvider
                                                  .notifier,
                                            )
                                            .getAttendanceStatus(
                                              salesId: getIdFromName(
                                                name: salesList[index].name,
                                              ),
                                              date: selectedDate,
                                            );
                                      },
                                      error: (error, stackTrace) {
                                        ref.invalidate(
                                          attendanceListControllerProvider,
                                        );
                                        return 'Gagal Memuat Status Kehadiran';
                                      },
                                    );

                                return _createAttendanceTile(
                                  salesId: salesId,
                                  salesName: salesName,
                                  attendanceStatus: attendanceStatus,
                                );
                              },
                            );
                          },
                          error: (error, _) {
                            attendanceMarkers.clear();
                            final exception = error as ApiException;
                            return Center(
                              child: Text(
                                'Gagal Memuat Daftar Kehadiran: ${exception.message}',
                                style: errorStyle,
                              ),
                            );
                          },
                        );
                      },
                      error: (error, stackTrace) {
                        attendanceMarkers.clear();
                        final exception = error as ApiException;
                        return Center(
                          child: Text(
                            'Gagal Memuat Daftar Kehadiran: ${exception.message}',
                            style: errorStyle,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createAttendanceTile({
    required String salesId,
    required String salesName,
    required String attendanceStatus,
  }) {
    final cs = Theme.of(context).colorScheme;

    Color statusColor = cs.error;
    if (attendanceStatus == 'Selesai Absen') {
      statusColor = cs.tertiary;
    } else if (attendanceStatus == 'Belum Check Out') {
      statusColor = cs.tertiaryContainer;
    }

    return hoverableCard(
      context: context,
      child: InkWell(
        onTap: () {
          setState(() {
            focusedSalesId = salesId;
            focusedSalesName = salesName;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(salesName, style: bodyStyle),
            Text(
              attendanceStatus,
              style: bodyStyle.copyWith(color: statusColor),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _refreshAttendanceList() async {
    ref.invalidate(attendanceListControllerProvider);
  }

  Future<void> populateAttendanceMarker({
    required List<UserDomain> salesList,
  }) async {
    if (attendanceMarkers.isNotEmpty) {
      return;
    }

    for (int i = 0; i < salesList.length; i++) {
      final sales = salesList[i];

      final salesMarkers = ref
          .read(attendanceListControllerProvider.notifier)
          .getSalesAttendanceMarkers(
            salesId: getIdFromName(name: sales.name),
            salesName: sales.fields?.userName?.stringValue ?? '',
            date: selectedDate,
            checkInColor: Theme.of(context).colorScheme.tertiary,
            checkOutColor: Theme.of(context).colorScheme.tertiaryContainer,
          );

      attendanceMarkers.addAll(salesMarkers);
    }

    // Refresh map with new markers
    setState(() {});
  }

  void _changeDate(int offset) {
    setState(() {
      attendanceMarkers.clear();
      focusedSalesId = null;
      focusedSalesName = null;
      selectedDate = selectedDate.add(Duration(days: offset));
    });
  }
}
