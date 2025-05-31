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
          .fetchVisitsForDate(date: DateTime.now());
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
    final visitListState = ref.watch(visitListControllerProvider);
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
                    child: Text(
                      'Data Kunjungan Tidak Ditemukan',
                      style: bodyStyle,
                    ),
                  );
                }

                return LayoutBuilder(
                  builder: (context, constraints) {
                    final crossCount = getCrossAxisCount(constraints);
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

                        final name = data.fields?.fullName?.stringValue ?? '-';
                        final email = data.fields?.email?.stringValue ?? '-';
                        final role = data.fields?.role?.stringValue ?? '-';
                        final registerDate = DateFormat(
                          'd MMM yyyy',
                        ).format(DateTime.parse(data.createTime ?? ''));

                        return itemCard(
                          context: context,
                          icon: Icons.person,
                          title: name,
                          subtitle: email,
                          secondarySubtitle:
                              data.fields?.phoneNumber?.stringValue != null
                                  ? phoneNumberFormat(
                                    data.fields?.phoneNumber?.stringValue ?? '',
                                  )
                                  : null,
                          leftBottomText:
                              role[0].toUpperCase() + role.substring(1),
                          rightBottomText: registerDate.toString(),
                          onTap: () {},
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
                    'Gagal Memuat Daftar Kunjungan: ${exception.message}',
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
    return buildCard(
      child: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(-6.200000, 106.816666),
          initialZoom: 13,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 40,
                height: 40,
                point: const LatLng(-6.200000, 106.816666),
                child: Icon(Icons.location_on, color: cs.primary, size: 32),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCard({String? title, required Widget child}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title != null
                ? Text(title, style: titleStyle)
                : const SizedBox.shrink(),
            title != null ? const SizedBox(height: 8) : const SizedBox.shrink(),
            Expanded(child: child),
          ],
        ),
      ),
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

  Future<void> _refreshVisitList() async {
    ref
        .read(visitListControllerProvider.notifier)
        .fetchVisitsForDate(date: selectedDate, forceFetch: true);
  }

  void _changeDate(int offset) {
    setState(() {
      selectedDate = selectedDate.add(Duration(days: offset));
    });
    ref
        .read(visitListControllerProvider.notifier)
        .fetchVisitsForDate(date: selectedDate);
  }
}
