import 'package:android_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:android_app/visit_module/page/add_visit_page.dart';
import 'package:android_app/visit_module/page/controller/visit_list_controller.dart';
import 'package:android_app/visit_module/page/visit_detail_page.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

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
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final customerListState = ref.watch(customerListControllerProvider);
    final visitListState = ref.watch(visitListControllerProvider);
    void Function()? _addButtonFunction;
    void Function()? _navigateButtonFunction;

    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Stack(
        children: [
          Column(
            children: [
              // Date Selector
              _buildDateselector(),
              SizedBox(height: 12.h),

              // Visit List
              Expanded(
                child: visitListState.when(
                  loading: () {
                    _addButtonFunction = null;
                    _navigateButtonFunction = null;
                    return const Center(child: CircularProgressIndicator());
                  },
                  data: (visitDayData) {
                    // Get visit data from list (per day)
                    final visitList =
                        visitDayData[_generateVisitIdFromDate(selectedDate)];

                    if (visitList == null || visitList.isLeft()) {
                      final error = visitList?.swap().getOrElse(
                        (l) => ApiException(
                          statusCode: -1,
                          message: 'Unknown Error',
                        ),
                      );

                      if (error?.statusCode == 404) {
                        setState(() {
                          _addButtonFunction = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) => AddVisitPage(
                                      date: selectedDate,
                                      visitDataList: [],
                                    ),
                              ),
                            );
                          };
                          _navigateButtonFunction = null;
                        });
                      }

                      return refreshableInfoWidget(
                        refreshFunction: _refreshVisitList,
                        content:
                            error != null
                                ? (error).statusCode == 404
                                    ? const Text('Data Visit Tidak Ditemukan')
                                    : const Text('Gagal Memuat Data Kunjungan')
                                : const Text('Gagal Memuat Data Kunjungan'),
                      );
                    }

                    // Get visit data (visit document for a day)
                    final VisitDomain? data = visitList.getOrElse(
                      (error) => null,
                    );
                    if (data == null) {
                      setState(() {
                        _addButtonFunction = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AddVisitPage(
                                    date: selectedDate,
                                    visitDataList: [],
                                  ),
                            ),
                          );
                        };
                        _navigateButtonFunction = null;
                      });
                      return refreshableInfoWidget(
                        refreshFunction: _refreshVisitList,
                        content: const Text('Data Visit Tidak Ditemukan'),
                      );
                    }

                    // Get visit data (list of visit in a day)
                    List<Value> visits = List<Value>.from(
                      data.fields?.visits?.arrayValue?.values ?? [],
                    );

                    // Convert into List<Map<String, dynamic>>
                    List<Map<String, dynamic>> visitDataList =
                        _createVisitDataList(visits: visits);

                    setState(() {
                      _addButtonFunction = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AddVisitPage(
                                  date: selectedDate,
                                  visitDataList: visitDataList,
                                ),
                          ),
                        );
                      };
                    });

                    if (visitDataList.isEmpty) {
                      return refreshableInfoWidget(
                        refreshFunction: _refreshVisitList,
                        content: const Text('Data Visit Tidak Ditemukan'),
                      );
                    }

                    _navigateButtonFunction = () async {
                      if (visitDataList.length == 1) {
                        final position = await ref
                            .read(customerListControllerProvider.notifier)
                            .getCustomerLocation(
                              id:
                                  visitDataList[0]['mapValue']?['fields']?['customer_id']?['stringValue'],
                            );
                        if (position != null) {
                          launchGoogleMapNavigation(
                            context: context,
                            latitude: position.latitude,
                            longitude: position.longitude,
                          );
                        }
                      }

                      // Get location data
                      List<(double, double)> waypoints = [];
                      (double, double) destination = (0, 0);

                      for (
                        int index = 0;
                        index < visitDataList.length;
                        index++
                      ) {
                        String _customerId =
                            visitDataList[index]['mapValue']?['fields']?['customer_id']?['stringValue'] ??
                            '';

                        final position = await ref
                            .read(customerListControllerProvider.notifier)
                            .getCustomerLocation(id: _customerId);

                        // If location null, skip
                        if (position == null) continue;

                        final currentPoint = (
                          position.latitude,
                          position.longitude,
                        );

                        // Check for duplicate
                        if (waypoints.contains(currentPoint)) continue;

                        // Navigate to 1 point if only 1 visit
                        if (index == visitDataList.length - 1) {
                          destination = currentPoint;
                        } else {
                          waypoints.add(currentPoint);
                        }
                      }

                      launchGoogleMapsRouteNavigation(
                        context: context,
                        waypoints: waypoints,
                        destination: destination,
                      );
                    };

                    return RefreshIndicator(
                      onRefresh: _refreshVisitList,
                      child: ListView.separated(
                        itemCount: visitDataList.length,
                        separatorBuilder:
                            (context, index) => SizedBox(height: 12.h),
                        itemBuilder: (context, index) {
                          String visitStatus =
                              visitDataList[index]['mapValue']?['fields']?['visit_status']?['integerValue'] ??
                              '0';

                          return customListItem(
                            context: context,
                            leadIcon: Icons.location_on,
                            title: customerListState.when(
                              loading: () => 'Memuat...',
                              data: (customerList) {
                                return ref
                                    .read(
                                      customerListControllerProvider.notifier,
                                    )
                                    .getCustomerName(
                                      id:
                                          visitDataList[index]['mapValue']?['fields']?['customer_id']?['stringValue'] ??
                                          '',
                                    );
                              },
                              error: (error, stackTrace) {
                                ref.invalidate(customerListControllerProvider);
                                return 'Gagal Memuat Nama';
                              },
                            ),
                            subtitle:
                                visitStatus == '1'
                                    ? 'Direncanakan'
                                    : visitStatus == '2'
                                    ? 'Selesai'
                                    : visitStatus == '3'
                                    ? 'Dibatalkan'
                                    : 'Tidak Diketahui',
                            trailIcon: Icons.arrow_forward_ios,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => VisitDetailPage(
                                        date: selectedDate,
                                        visitDataList: visitDataList,
                                        index: index,
                                      ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                  error: (error, _) {
                    // Exception, not casted to ApiException bcs ApiException is collected in data
                    setState(() {
                      _addButtonFunction = null;
                      _navigateButtonFunction = null;
                    });
                    return refreshableInfoWidget(
                      refreshFunction: _refreshVisitList,
                      content: Text(
                        'Gagal Memuat Data Pelanggan: $error',
                        style: errorStyle,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),

          // Floating action button
          _addButtonFunction != null
              ? Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  heroTag: 'add_button',
                  onPressed: _addButtonFunction,
                  child: const Icon(Icons.add),
                ),
              )
              : const SizedBox.shrink(),

          _navigateButtonFunction != null
              ? Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton(
                  heroTag: 'navigate_button',
                  onPressed: _navigateButtonFunction,
                  child: const Icon(Icons.navigation),
                ),
              )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _buildDateselector() {
    return Container(
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: androidBoxDecoration(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => _changeDate(-1),
            icon: Icon(
              Icons.chevron_left,
              size: 28.sp,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
          Expanded(
            child: Center(
              child: Text(
                DateFormat.yMMMMd().format(selectedDate),
                style: subtitleStyle,
              ),
            ),
          ),
          IconButton(
            onPressed: () => _changeDate(1),
            icon: Icon(
              Icons.chevron_right,
              size: 28.sp,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ],
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
