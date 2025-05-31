import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';

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
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () {
        ref.read(customerListControllerProvider.notifier).resetSearch();
      },
    );
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

    return const Scaffold(body: Text('data'));
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
