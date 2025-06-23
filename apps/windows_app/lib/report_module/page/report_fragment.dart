import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:windows_app/order_module/page/controller/order_list_controller.dart';
import 'package:windows_app/utils/geoJsonPolygonLoader.dart';

class ReportFragment extends StatefulHookConsumerWidget {
  const ReportFragment({super.key});

  @override
  ConsumerState<ReportFragment> createState() => _ReportFragmentState();
}

class _ReportFragmentState extends ConsumerState<ReportFragment> {
  final List<RegionFilter> items = [
    RegionFilter.bangkalan,
    RegionFilter.pamekasan,
    RegionFilter.sumenep,
    RegionFilter.sampang,

    RegionFilter.surabaya,
    RegionFilter.sidoarjo,

    RegionFilter.gresik,
    RegionFilter.lamongan,
    RegionFilter.tuban,

    RegionFilter.malang,
    RegionFilter.pasuruan,
    RegionFilter.mojokerto,
    RegionFilter.probolinggo,
  ];
  RegionFilter? selectedRegion;
  DateTimeRange? selectedDateRange;
  Offset? popupOffset;
  String popupText = '';

  bool reportView = true;
  GeoJsonPolygonLoader? geoJsonPolygonLoader = polygonDataLoader;

  List<Polygon> mapPolygons = [];
  List<int> orderPerPolygon = [];

  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () async {
        if (geoJsonPolygonLoader != null) return;
        polygonDataLoader = await GeoJsonPolygonLoader.create(context: context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final orderListState = ref.watch(orderListControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text('Laporan', style: titleStyle),
              const SizedBox(height: 10),

              _buildHeader(),
              const SizedBox(height: 12),

              Expanded(child: reportView ? buildReportView() : buildMapView()),
            ],
          ),
          if (popupOffset != null)
            Positioned(
              left: popupOffset!.dx + 10,
              top: popupOffset!.dy + 90,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(popupText),
                ),
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
              child: _buildDateRangeSelector(),
            ),

            if (!reportView) const SizedBox(width: 16),
            if (!reportView) _createSingleSelectDropdown(),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () async {
                setState(() {
                  reportView = !reportView;
                  selectedRegion = null;
                  popupOffset = null;
                  popupText = '';
                  mapPolygons = [];
                  orderPerPolygon = [];
                });
              },
              icon: const Icon(Icons.rotate_90_degrees_ccw),
              tooltip: 'Ganti Tampilan',
            ),

            const SizedBox(width: 8),

            IconButton(
              onPressed: () async {},
              icon: const Icon(Icons.refresh),
              tooltip: 'Segarkan',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDateRangeSelector() {
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
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            showDateRangePicker(
              context: context,
              firstDate: DateTime(2020),
              lastDate: DateTime.now(),
              helpText: 'Pilih Rentang Tanggal',
              saveText: 'Terapkan',
            ).then((value) {
              if (value != null) {
                ref
                    .read(orderListControllerProvider.notifier)
                    .filterOrderByDateRange(value);

                setState(() {
                  selectedDateRange = value;
                });
              }
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${DateFormat.yMMMMd().format(selectedDateRange?.start ?? DateTime.now())} - ${DateFormat.yMMMMd().format(selectedDateRange?.end ?? DateTime.now())}',
                style: bodyStyle,
              ),
              Icon(
                Icons.calendar_today,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createSingleSelectDropdown() {
    return SizedBox(
      width: 200,
      child: DropdownButton<RegionFilter>(
        isExpanded: true,
        value: selectedRegion,
        hint: Text('Pilih Daerah', style: bodyStyle),
        style: bodyStyle,
        dropdownColor: Theme.of(context).colorScheme.surface,
        iconEnabledColor: Theme.of(context).colorScheme.onSurface,
        underline: Container(
          height: 1,
          color: Theme.of(context).colorScheme.outline,
        ),
        onChanged: (value) async {
          // get polygons from geojson
          List<Polygon> newPolygons = await loadPolygonsFromGeoJSON(
            context,
            value,
          );

          // get all order locations
          List<LatLng> customerOrderLocation =
              // [
              //   const LatLng(-7.226227, 112.698783),
              //   const LatLng(-7.226227, 112.698783),
              //   const LatLng(-7.226227, 112.698783),
              //   const LatLng(-7.226227, 112.698783),
              //   const LatLng(-7.226227, 112.698783),
              //   const LatLng(-7.226227, 112.698783),
              //   const LatLng(-7.226227, 112.698783),
              //   const LatLng(-7.226227, 112.698783),
              //   const LatLng(-7.226227, 112.698783),
              //   const LatLng(-7.226227, 112.698783),
              // ];
              await ref
                  .read(orderListControllerProvider.notifier)
                  .getFilteredOrderLocations();

          // count order quantities per polygon
          List<int> newOrderPerPolygon = [];
          for (var i = 0; i < newPolygons.length; i++) {
            Polygon polygon = newPolygons[i];
            int count = 0;
            for (LatLng location in customerOrderLocation) {
              if (isPointInPolygon(location, polygon.points)) {
                count++;
              }
            }

            // update polygon color
            newPolygons[i] = Polygon(
              points: polygon.points,
              color: primaryColor.withAlpha(count <= 0 ? 0 : 10 + count * 5),
              borderColor: textColor,
              borderStrokeWidth: 0.5,
            );

            // add count to the list
            newOrderPerPolygon.add(count);
          }

          // update state with new polygons and order counts
          setState(() {
            selectedRegion = value;
            mapPolygons = newPolygons;
            orderPerPolygon = newOrderPerPolygon;
          });
        },
        items:
            items.map((item) {
              return DropdownMenuItem<RegionFilter>(
                value: item,
                child: Text(
                  item.name[0].toUpperCase() + item.name.substring(1),
                  style: bodyStyle,
                ),
              );
            }).toList(),
      ),
    );
  }

  Widget buildReportView() {
    return const SizedBox(height: 100, child: Text('as'));
  }

  Widget buildMapView() {
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
                options: MapOptions(
                  initialCenter: const LatLng(-7.2960801, 112.738667),
                  initialZoom: 13,
                  onTap: (tapPos, latlng) {
                    final polygonHit = mapPolygons.indexWhere(
                      (poly) => isPointInPolygon(latlng, poly.points),
                    );

                    if (polygonHit >= 0) {
                      int orderQuantity = 0;

                      try {
                        orderQuantity = orderPerPolygon[polygonHit];
                      } catch (e) {
                        orderQuantity = 0;
                      }

                      // If a polygon was hit, show a popup at the tap position
                      setState(() {
                        popupOffset = tapPos.relative;
                        popupText = 'Jumlah Order: $orderQuantity';
                      });
                    } else {
                      setState(() {
                        popupOffset = null;
                        popupText = 'Tidak ada data di lokasi ini';
                      });
                    }
                  },
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  ),
                  PolygonLayer(polygons: mapPolygons),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isPointInPolygon(LatLng point, List<LatLng> ring) {
    final x = point.longitude;
    final y = point.latitude;
    var inside = false;

    for (var i = 0, j = ring.length - 1; i < ring.length; j = i++) {
      final xi = ring[i].longitude, yi = ring[i].latitude;
      final xj = ring[j].longitude, yj = ring[j].latitude;

      final intersect =
          ((yi > y) != (yj > y)) && (x < (xj - xi) * (y - yi) / (yj - yi) + xi);
      if (intersect) inside = !inside;
    }

    return inside;
  }

  Future<List<Polygon>> loadPolygonsFromGeoJSON(
    BuildContext context,
    RegionFilter? region,
  ) async {
    if (geoJsonPolygonLoader == null || region == null) return [];
    return geoJsonPolygonLoader?.getPolygonsForRegion(region) ?? [];
  }
}
