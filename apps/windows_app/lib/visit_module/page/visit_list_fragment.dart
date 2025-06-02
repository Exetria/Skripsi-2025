// ignore_for_file: unused_local_variable

import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
import 'package:windows_app/utils/functions.dart';
import 'package:windows_app/visit_module/domain/entities/visit_domain.dart';
import 'package:windows_app/visit_module/page/controller/visit_list_controller.dart';

class VisitListFragment extends StatefulHookConsumerWidget {
  const VisitListFragment({super.key});

  @override
  ConsumerState<VisitListFragment> createState() => _VisitListFragment();
}

class _VisitListFragment extends ConsumerState<VisitListFragment> {
  DateTime selectedDate = DateTime.now();

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
        ref
            .read(userListControllerProvider.notifier)
            .changeRoleFilter(RoleFilter.sales);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final customerListState = ref.watch(customerListControllerProvider);
    final userListState = ref.watch(userListControllerProvider);

    void Function()? _addButtonFunction;
    void Function()? _navigateButtonFunction;

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
          // Expanded(
          //   child: Row(
          //     children: [
          //       Expanded(flex: 7, child: buildMapSection()),
          //       Expanded(flex: 3, child: buildMapSection()),
          //     ],
          //   ),
          // ),
          Expanded(
            child: userListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (salesList) {
                if (salesList == null || salesList.isEmpty) {
                  return Center(
                    child: Text('Data Sales Tidak Ditemukan', style: bodyStyle),
                  );
                }

                return LayoutBuilder(
                  builder: (context, constraints) {
                    final crossCount = getCrossVisitAxisCount(constraints);
                    return GridView.builder(
                      padding: const EdgeInsets.only(top: 8),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossCount,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: getChildAspectRatio(constraints),
                      ),
                      itemCount: salesList.length,
                      itemBuilder: (context, index) {
                        final data = salesList[index];

                        final salesId = getIdFromName(name: data.name);
                        final salesName =
                            data.fields?.fullName?.stringValue ?? '-';

                        return buildVisitListCard(
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
              child: _buildDateSelector(),
            ),
            const SizedBox(width: 16),
          ],
        ),
        Row(
          children: [
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
            Expanded(
              child: Center(
                child: Text(
                  DateFormat.yMMMMd().format(selectedDate),
                  style: bodyStyle, // same text style you use elsewhere
                ),
              ),
            ),
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

  Widget buildMapSection() {
    final cs = Theme.of(context).colorScheme;
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
                  initialCenter: LatLng(-6.200000, 106.816666),
                  initialZoom: 13,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(
                        width: 40,
                        height: 40,
                        point: const LatLng(-6.200000, 106.816666),
                        child: Icon(
                          Icons.location_on,
                          color: Theme.of(context).colorScheme.primary,
                          size: 32,
                        ),
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

  Widget buildVisitListCard({
    required String salesId,
    required String salesName,
  }) {
    final visitListState = ref.watch(visitListControllerProvider);
    bool isHovered = false;

    return StatefulBuilder(
      builder: (context, setState) {
        return MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            transform:
                isHovered
                    ? Matrix4.translationValues(0, -6, 0)
                    : Matrix4.identity(),
            decoration: itemCardDecoration(context, isHovered: isHovered),
            padding: const EdgeInsets.all(12),
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
                      loading:
                          () =>
                              const Center(child: CircularProgressIndicator()),
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
                        List<Map<String, dynamic>> visitDataList =
                            _createVisitDataList(visits: visits);

                        if (visitDataList.isEmpty) {
                          return const Center(
                            child: Text('Data Visit Tidak Ditemukan'),
                          );
                        }

                        return ListView.builder(
                          itemCount: visitDataList.length,
                          itemBuilder: (context, index) {
                            final visitData = visitDataList[index];
                            final customerId =
                                visitData['mapValue']['fields']['customer_id']['stringValue'];
                            final visitStatus =
                                visitData['mapValue']['fields']['visit_status']['integerValue'];

                            return createVisitTile(
                              customerId: customerId,
                              visitStatus:
                                  visitStatus == '1'
                                      ? 'Direncanakan'
                                      : visitStatus == '2'
                                      ? 'Selesai'
                                      : visitStatus == '3'
                                      ? 'Dibatalkan'
                                      : 'Tidak Tersedia',
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
                        onPressed: () async {
                          // TODO: Add visit popup
                        },
                        icon: const Icon(Icons.add),
                        tooltip: 'Tambah Kunjungan untuk Sales Ini',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget createVisitTile({
    required String customerId,
    required String visitStatus,
  }) {
    final customerListState = ref.watch(customerListControllerProvider);
    final cs = Theme.of(context).colorScheme;
    bool isHovered = false;
    return StatefulBuilder(
      builder: (context, setState) {
        return MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            transform:
                isHovered
                    ? Matrix4.translationValues(0, -4, 0)
                    : Matrix4.identity(),
            padding: const EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                // TODO: Display visit detail
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    customerListState.when(
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
                    ),
                  ),
                  Text(visitStatus),
                ],
              ),
            ),
          ),
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

  int getCrossVisitAxisCount(BoxConstraints constraints) {
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

  void _changeDate(int offset) {
    setState(() {
      selectedDate = selectedDate.add(Duration(days: offset));
    });
    ref
        .read(visitListControllerProvider.notifier)
        .fetchAllSalesVisitsForDate(date: selectedDate);
  }
}
