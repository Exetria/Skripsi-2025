import 'package:android_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:android_app/visit_module/page/controller/update_visit_controller.dart';
import 'package:android_app/visit_module/page/controller/visit_list_controller.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

final markerListProvider = StateProvider<List<Marker>>((ref) => []);

// ignore: must_be_immutable
class AddVisitPage extends StatefulHookConsumerWidget {
  DateTime date;
  VisitDomain? visitDomain;
  List<VisitDomain> currentMonthVisitList;
  List<Map<String, dynamic>> visitDataList;

  AddVisitPage({
    super.key,
    required this.date,
    required this.visitDomain,
    required this.currentMonthVisitList,
    required this.visitDataList,
  });

  @override
  ConsumerState<AddVisitPage> createState() => _AddVisitPageState();
}

class _AddVisitPageState extends ConsumerState<AddVisitPage> {
  final _mapController = MapController();

  final List<String> todayVisitedCustomerIds = [];
  final List<String> visitedCustomerIds = [];

  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () {
        ref.read(customerListControllerProvider.notifier).resetSearch();
      },
    );

    // If visitDomain is not null, populate the visited customer IDs
    if (widget.visitDomain != null) {
      for (Value visitData
          in widget.visitDomain?.fields?.visits?.arrayValue?.values ?? []) {
        final customerId = visitData.mapValue?.fields?.customerId?.stringValue;

        if (customerId != null) {
          todayVisitedCustomerIds.add(customerId);
        }
      }
    }

    // Collect visited customer id in this month
    for (final visit in widget.currentMonthVisitList) {
      for (Value visitData in visit.fields?.visits?.arrayValue?.values ?? []) {
        final visitStatus =
            visitData.mapValue?.fields?.visitStatus?.integerValue;
        final customerId = visitData.mapValue?.fields?.customerId?.stringValue;

        if (customerId != null && visitStatus == '2') {
          visitedCustomerIds.add(customerId);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final customerListState = ref.watch(customerListControllerProvider);
    final markers = ref.watch(markerListProvider);

    customerListState.when(
      loading: () {
        // Clear markers
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (ref.read(markerListProvider.notifier).state.isNotEmpty) {
            ref.read(markerListProvider.notifier).state = [];
          }
        });
      },
      data: (customerList) {
        // Set customer markers after widget has been built
        WidgetsBinding.instance.addPostFrameCallback((_) {
          List<Marker> customerMarker = [];
          if (customerList != null && customerList.isNotEmpty) {
            if (ref.read(markerListProvider.notifier).state.length ==
                customerList.length) {
              return;
            }
            for (var customerData in customerList) {
              final point = LatLng(
                customerData
                        .fields
                        ?.companyLocation
                        ?.mapValue
                        ?.fields
                        ?.latitude
                        ?.doubleValue ??
                    0,
                customerData
                        .fields
                        ?.companyLocation
                        ?.mapValue
                        ?.fields
                        ?.longitude
                        ?.doubleValue ??
                    0,
              );
              customerMarker.add(
                Marker(
                  height: 20.h,
                  width: 20.w,
                  point: point,
                  child: Icon(
                    Icons.location_pin,
                    color: Theme.of(context).colorScheme.primary,
                    size: 20.r,
                  ),
                ),
              );
            }
          }
          ref.read(markerListProvider.notifier).state = customerMarker;
        });
      },
      error: (error, stackTrace) {
        // Clear markers
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (ref.read(markerListProvider.notifier).state.isNotEmpty) {
            ref.read(markerListProvider.notifier).state = [];
          }
        });
      },
    );

    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Kunjungan Baru',
        showLeftButton: true,
        rightButtonIcon: Icons.refresh,
        onRightPressed: () {
          ref.invalidate(customerListControllerProvider);
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: FlutterMap(
              mapController: _mapController,
              options: const MapOptions(
                initialCenter: LatLng(-7.3421267, 112.7363611),
                initialZoom: 15.0,
                interactionOptions: InteractionOptions(
                  flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
                ),
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                ),
                MarkerLayer(markers: markers),
              ],
            ),
          ),
          customSearchBar(
            context: context,
            hint: 'Cari Pelanggan...',
            onChanged: (query) {
              ref
                  .read(customerListControllerProvider.notifier)
                  .searchCustomer(query);
            },
          ),
          SizedBox(
            height: ScreenUtil().screenHeight / 4,
            child: customerListState.when(
              loading: () {
                return const Center(child: CircularProgressIndicator());
              },
              data: (customerList) {
                if (customerList == null || customerList.isEmpty) {
                  return refreshableInfoWidget(
                    refreshFunction: _refreshCustomerList,
                    content: const Text('Data Pelanggan Tidak Ditemukan'),
                  );
                }

                return ListView.separated(
                  itemCount: customerList.length,
                  separatorBuilder: (context, index) => SizedBox(height: 4.h),
                  itemBuilder: (context, index) {
                    final customerData = customerList[index];

                    final customerId = getIdFromName(name: customerData.name);
                    final customerName =
                        customerData.fields?.companyName?.stringValue ?? '-';
                    final customerAddress =
                        customerData.fields?.companyAddress?.stringValue ?? '-';
                    final double customerLatitude =
                        customerData
                            .fields
                            ?.companyLocation
                            ?.mapValue
                            ?.fields
                            ?.latitude
                            ?.doubleValue ??
                        0;
                    final double customerLongitude =
                        customerData
                            .fields
                            ?.companyLocation
                            ?.mapValue
                            ?.fields
                            ?.longitude
                            ?.doubleValue ??
                        0;

                    return Container(
                      padding: EdgeInsets.all(8.r),
                      decoration: androidBoxDecoration(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(customerName, style: captionStyle),
                              Text(customerAddress),
                              Text(
                                visitedCustomerIds.contains(customerId)
                                    ? 'Sudah Dikunjungi Bulan Ini'
                                    : 'Belum Dikunjungi Bulan Ini',
                                style:
                                    visitedCustomerIds.contains(customerId)
                                        ? TextStyle(
                                          color:
                                              Theme.of(
                                                context,
                                              ).colorScheme.tertiary,
                                        )
                                        : TextStyle(
                                          color:
                                              Theme.of(
                                                context,
                                              ).colorScheme.error,
                                        ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (!todayVisitedCustomerIds.contains(customerId))
                                GestureDetector(
                                  onTap:
                                      todayVisitedCustomerIds.contains(
                                            customerId,
                                          )
                                          ? null
                                          : () async {
                                            showConfirmationDialog(
                                              context: context,
                                              message:
                                                  'Apakah Anda yakin ingin menambahkan kunjungan ke \n$customerName?',
                                              rightButtonBackgroundColor:
                                                  Theme.of(
                                                    context,
                                                  ).colorScheme.tertiary,
                                              leftButtonBackgroundColor:
                                                  Theme.of(
                                                    context,
                                                  ).colorScheme.error,
                                              onRightButtonTap: () async {
                                                // Add new data to visit data list array
                                                widget.visitDataList.add({
                                                  'mapValue': {
                                                    'fields': {
                                                      'customer_id': {
                                                        'stringValue':
                                                            customerId,
                                                      },
                                                      'visit_status': {
                                                        'integerValue': '1',
                                                      },
                                                      'visit_notes': {
                                                        'stringValue': '',
                                                      },
                                                    },
                                                  },
                                                });

                                                // Submit new visit data
                                                await ref
                                                    .read(
                                                      updateVisitControllerProvider
                                                          .notifier,
                                                    )
                                                    .updateVisitData(
                                                      date: widget.date,
                                                      visitDataList:
                                                          widget.visitDataList,
                                                    );

                                                // Refresh visit list
                                                await ref
                                                    .read(
                                                      visitListControllerProvider
                                                          .notifier,
                                                    )
                                                    .fetchVisitsForDate(
                                                      date: widget.date,
                                                      forceFetch: true,
                                                    );
                                                Navigator.pop(context);
                                              },
                                              onLeftButtonTap: () {},
                                            );
                                          },
                                  child: Container(
                                    padding: EdgeInsets.all(8.r),
                                    decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color:
                                          Theme.of(
                                            context,
                                          ).colorScheme.onPrimary,
                                    ),
                                  ),
                                ),

                              SizedBox(width: 8.w),
                              GestureDetector(
                                onTap: () {
                                  moveCamera(
                                    latitude: customerLatitude,
                                    longitude: customerLongitude,
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8.r),
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Icon(
                                    Icons.location_on_outlined,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              error: (error, stackTrace) {
                final exception = error as ApiException;

                return refreshableInfoWidget(
                  refreshFunction: _refreshCustomerList,
                  content: Text(
                    'Gagal Memuat Data Pelanggan: ${exception.message}',
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

  Future<void> _refreshCustomerList() async {
    ref.invalidate(customerListControllerProvider);
  }

  void moveCamera({
    required double latitude,
    required double longitude,
    double zoomLevel = 18,
  }) {
    _mapController.move(LatLng(latitude, longitude), zoomLevel);
  }
}
