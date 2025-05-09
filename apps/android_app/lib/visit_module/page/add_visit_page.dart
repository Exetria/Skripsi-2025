import 'package:android_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:android_app/utils/widget_settings.dart';
import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:android_app/visit_module/page/controller/update_visit_controller.dart';
import 'package:android_app/visit_module/page/controller/visit_list_controller.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

// ignore: must_be_immutable
class AddVisitPage extends StatefulHookConsumerWidget {
  DateTime date;
  List<Value> visitData;

  AddVisitPage({super.key, required this.date, required this.visitData});

  @override
  ConsumerState<AddVisitPage> createState() => _AddVisitPageState();
}

class _AddVisitPageState extends ConsumerState<AddVisitPage> {
  @override
  Widget build(BuildContext context) {
    final customerListState = ref.watch(customerListControllerProvider);

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
              options: const MapOptions(
                initialCenter: LatLng(-7.3421267, 112.7363611),
                initialZoom: 15.0,
                interactionOptions: InteractionOptions(
                  flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
                ),
              ),
              children: [
                TileLayer(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: const ['a', 'b', 'c'],
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      width: 40,
                      height: 40,
                      point: const LatLng(-7.3421267, 112.7363611),
                      child: Icon(
                        Icons.location_pin,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          customSearchBar(context: context, hint: 'Search Customers...'),
          SizedBox(
            height: ScreenUtil().screenHeight / 4,
            child: customerListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
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
                                  await ref
                                      .read(
                                        updateVisitControllerProvider.notifier,
                                      )
                                      .createVisit(
                                        date: widget.date,
                                        customerId:
                                            customerList[index].name != null
                                                ? customerList[index].name!
                                                    .substring(61)
                                                : '',
                                        previousVisitData: widget.visitData,
                                      );
                                  await ref
                                      .read(
                                        visitListControllerProvider.notifier,
                                      )
                                      .fetchVisitsForDate(
                                        date: widget.date,
                                        forceFetch: true,
                                      );
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8.r),
                                  decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Icon(Icons.add, color: textColor),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              GestureDetector(
                                onTap: () {
                                  // TODO: Add locate company logic here
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
                                    color: textColor,
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
}
