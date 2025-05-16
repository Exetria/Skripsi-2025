import 'package:android_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:android_app/utils/widget_settings.dart';
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
  List<Map<String, dynamic>> visitDataList;

  AddVisitPage({super.key, required this.date, required this.visitDataList});

  @override
  ConsumerState<AddVisitPage> createState() => _AddVisitPageState();
}

class _AddVisitPageState extends ConsumerState<AddVisitPage> {
  final _mapController = MapController();

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
        title: 'Add Visit',
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
          customSearchBar(context: context, hint: 'Search Customers...'),
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
                    content: const Text('No Customer Data Found'),
                  );
                }

                return ListView.separated(
                  itemCount: customerList.length,
                  separatorBuilder: (context, index) => SizedBox(height: 4.h),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(8.r),
                      decoration: regularBoxDecoration(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            customerList[index]
                                    .fields
                                    ?.companyName
                                    ?.stringValue ??
                                '-',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  showConfirmationDialog(
                                    context: context,
                                    message:
                                        'Are you sure to add visit to\n${customerList[index].fields?.companyName?.stringValue ?? "-"}',
                                    leftButtonBackgroundColor:
                                        Theme.of(context).colorScheme.tertiary,
                                    rightButtonBackgroundColor:
                                        Theme.of(context).colorScheme.error,
                                    onLeftButtonTap: () async {
                                      // Add new data to visit data list array
                                      widget.visitDataList.add({
                                        'mapValue': {
                                          'fields': {
                                            'customer_id': {
                                              'stringValue': getIdFromName(
                                                name: customerList[index].name,
                                              ),
                                            },
                                            'visit_status': {
                                              'integerValue': '1',
                                            },
                                            'visit_notes': {'stringValue': ''},
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
                                            visitDataList: widget.visitDataList,
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
                                    onRightButtonTap: () {},
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
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              GestureDetector(
                                onTap: () {
                                  moveCamera(
                                    latitude:
                                        customerList[index]
                                            .fields
                                            ?.companyLocation
                                            ?.mapValue
                                            ?.fields
                                            ?.latitude
                                            ?.doubleValue ??
                                        0,
                                    longitude:
                                        customerList[index]
                                            .fields
                                            ?.companyLocation
                                            ?.mapValue
                                            ?.fields
                                            ?.longitude
                                            ?.doubleValue ??
                                        0,
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
                    'Error Loading Customer List: ${exception.message}',
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
