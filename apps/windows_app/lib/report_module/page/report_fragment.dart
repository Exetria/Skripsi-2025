import 'package:common_components/common_components.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/order_module/page/controller/order_list_controller.dart';
import 'package:windows_app/utils/functions.dart';
import 'package:windows_app/utils/geoJsonPolygonLoader.dart';
import 'package:windows_app/visit_module/page/controller/filtered_visit_controller.dart';
import 'package:windows_app/visit_module/page/controller/visit_list_controller.dart';

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
  DateTime? selectedMonth;
  Offset? popupOffset;
  String popupText = '';

  bool reportView = true;

  List<BarChartGroupData> barGroup = List.generate(
    31,
    (i) => BarChartGroupData(x: i, barRods: [BarChartRodData(toY: 0)]),
  );
  List<String> barGroupLabels = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
  ];
  int totalVisitCount = 0;
  int totalOrderCount = 0;
  int totalOrderPrice = 0;

  List<Polygon> mapPolygons = [];
  List<int> orderPerPolygon = [];

  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () async {
        polygonDataLoader ??= await GeoJsonPolygonLoader.create(
          context: context,
        );
        generateBarChartData();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Sales force count start date: 3 months ago
    final salesForceCountStartDate = DateTime(
      DateTime.now().year,
      DateTime.now().month - 3,
      DateTime.now().day,
    );

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

              Expanded(
                child:
                    reportView
                        ? buildReportView(
                          ref: ref,
                          salesForceCountStartDate: salesForceCountStartDate,
                        )
                        : buildMapView(),
              ),
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
              child: _buildMonthSelector(),
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
              onPressed: () {
                setState(() {
                  selectedMonth = null;
                  selectedRegion = null;
                  popupOffset = null;
                  popupText = '';
                  mapPolygons = [];
                  orderPerPolygon = [];
                  barGroup = List.generate(
                    31,
                    (i) => BarChartGroupData(
                      x: i,
                      barRods: [BarChartRodData(toY: 0)],
                    ),
                  );
                  totalVisitCount = 0;
                  totalOrderCount = 0;
                  totalOrderPrice = 0;
                });
                generateBarChartData();
                ref.invalidate(visitListControllerProvider);
                ref.invalidate(orderListControllerProvider);
              },
              icon: const Icon(Icons.refresh),
              tooltip: 'Segarkan',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMonthSelector() {
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
            showMonthPicker(
              context: context,
              firstDate: DateTime(2020),
              lastDate: DateTime.now(),
              initialDate: selectedMonth ?? DateTime.now(),
            ).then((value) {
              if (value != null) {
                setState(() {
                  selectedMonth = value;
                  generateBarChartData();
                  totalVisitCount = 0;
                  totalOrderCount = 0;
                  totalOrderPrice = 0;
                });
              }
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat.yMMMM().format(selectedMonth ?? DateTime.now()),
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
        hint: const Text('Pilih Daerah'),
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
          List<int> orderCountPerPolygon = [];
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
            orderCountPerPolygon.add(count);
          }

          // update state with new polygons and order counts
          setState(() {
            popupOffset = null;
            popupText = '';

            selectedRegion = value;
            mapPolygons = newPolygons;
            orderPerPolygon = orderCountPerPolygon;
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

  Widget buildReportView({
    required WidgetRef ref,
    required DateTime salesForceCountStartDate,
  }) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight * 0.1,
            child: buildInfoSection(ref, salesForceCountStartDate),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: ScreenUtil().screenHeight * 0.5,
            child: buildVisitBarChart(),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: ScreenUtil().screenHeight * 0.5,
            child: buildOrderLineChart(),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
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

  Widget buildVisitBarChart() {
    final visitListState = ref.watch(visitListControllerProvider);
    final onHoverBackgroundColor =
        Theme.of(context).brightness == Brightness.light
            ? tertiaryColor
            : darkModeTertiaryColor;
    final onHoverTextColor = Theme.of(context).colorScheme.onSurface;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text('Grafik Kunjungan Harian', style: subtitleStyle),
            const SizedBox(height: 16),
            Expanded(
              child: visitListState.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                data: (visitList) {
                  if (barGroup.length < 31) {
                    return const Center(
                      child: Text('Data Kunjungan Tidak Lengkap'),
                    );
                  }

                  return BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceAround,
                      barTouchData: BarTouchData(
                        enabled: true,
                        touchTooltipData: BarTouchTooltipData(
                          getTooltipColor: (barChart) => onHoverBackgroundColor,
                          getTooltipItem: (group, groupIndex, rod, rodIndex) {
                            return BarTooltipItem(
                              rod.toY.toString(),
                              TextStyle(
                                color: onHoverTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                        ),
                      ),
                      titlesData: FlTitlesData(
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            getTitlesWidget: (value, meta) {
                              final index = value.toInt();
                              if (index < 0 || index >= barGroupLabels.length) {
                                return const SizedBox.shrink();
                              }

                              return Text(barGroupLabels[index]);
                            },
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      barGroups: barGroup,
                    ),
                  );
                },
                error: (error, _) {
                  final exception = error as ApiException;
                  return Center(
                    child: Text(
                      'Gagal Memuat Data Sales: ${exception.message}',
                      style: errorStyle,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOrderLineChart() {
    final orderListState = ref.watch(orderListControllerProvider);
    return orderListState.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (orderList) {
        // Get the total price of orders for each day of the month
        List<int> currentMonthOrderTotalPrice = ref
            .read(orderListControllerProvider.notifier)
            .getMonthlyOrderTotalPrice(selectedMonth ?? DateTime.now());

        List<int> currentMonthOrderCount = ref
            .read(orderListControllerProvider.notifier)
            .getMonthlyOrderCount(selectedMonth ?? DateTime.now());

        // Add spots & count total price for each day of the month
        List<FlSpot> lineSpots = [];
        int newTotalOrderPrice = 0;
        int newTotalOrderCount = 0;
        for (int i = 0; i < currentMonthOrderTotalPrice.length; i++) {
          final dailyTotal = currentMonthOrderTotalPrice[i];
          newTotalOrderPrice += dailyTotal;
          lineSpots.add(
            FlSpot(
              i.toDouble(), // Correct index
              dailyTotal.toDouble(), // Y value
            ),
          );
        }

        // Count total orders
        for (int orderInDay in currentMonthOrderCount) {
          newTotalOrderCount += orderInDay;
        }

        setState(() {
          totalOrderCount = newTotalOrderCount;
          totalOrderPrice = newTotalOrderPrice;
        });

        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text('Grafik Penjualan Harian', style: subtitleStyle),
                const SizedBox(height: 16),
                Expanded(
                  child: LineChart(
                    LineChartData(
                      gridData: const FlGridData(show: true),
                      lineTouchData: LineTouchData(
                        touchTooltipData: LineTouchTooltipData(
                          getTooltipColor:
                              (lineBarSpot) =>
                                  Theme.of(context).brightness ==
                                          Brightness.light
                                      ? tertiaryColor
                                      : darkModeTertiaryColor,
                          getTooltipItems: (touchedSpots) {
                            return touchedSpots.map((spot) {
                              return LineTooltipItem(
                                spot.y.toString(),
                                TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                  fontWeight: FontWeight.bold,
                                ),
                              );
                            }).toList();
                          },
                        ),
                      ),
                      titlesData: const FlTitlesData(
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 32,
                            interval: 1,
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          isCurved: true,
                          spots: lineSpots,
                          barWidth: 3,
                          color: Theme.of(context).colorScheme.primary,
                          dotData: const FlDotData(show: false),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      error: (error, _) {
        final exception = error as ApiException;
        return Center(
          child: Text(
            'Gagal Memuat Data Pesanan: ${exception.message}',
            style: errorStyle,
          ),
        );
      },
    );
  }

  Widget buildInfoSection(WidgetRef ref, DateTime salesForceCountStartDate) {
    final filteredVisitListState = ref.watch(
      filteredVisitControllerProvider(salesForceCountStartDate),
    );

    final customerListstate = ref.watch(customerListControllerProvider);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildStatCard(
                  context,
                  'Total Kunjungan',
                  totalVisitCount.toString(),
                ),
                buildStatCard(
                  context,
                  'Pelanggan Baru',
                  customerListstate.when(
                    loading: () => 'Memuat...',
                    data: (data) {
                      final newCustomerCount = ref
                          .read(customerListControllerProvider.notifier)
                          .getNewCustomerCount(
                            month: selectedMonth ?? DateTime.now(),
                          );
                      return newCustomerCount.toString();
                    },
                    error: (e, _) => 'Error: \$e',
                  ),
                ),
                buildStatCard(
                  context,
                  'Total Order',
                  totalOrderCount.toString(),
                ),
                buildStatCard(
                  context,
                  'Total Harga Order',
                  rupiahFormat(totalOrderPrice),
                ),
                Container(
                  height: ScreenUtil().screenHeight * 0.07,
                  width: 400,
                  padding: const EdgeInsets.all(12),
                  decoration: itemCardDecoration(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Perkiraan Kebutuhan Tenaga Sales',
                            style: captionStyle,
                          ),
                          Text(
                            filteredVisitListState.when(
                              loading: () => 'Memuat...',
                              data: (data) {
                                final count =
                                    ref
                                        .read(
                                          filteredVisitControllerProvider(
                                            salesForceCountStartDate,
                                          ).notifier,
                                        )
                                        .calculateSalesForce();
                                return '$count Orang Sales';
                              },
                              error: (e, _) => 'Error: \$e',
                            ),
                            style: footnoteStyle,
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.info_outline),
                        onPressed: () {},
                        tooltip:
                            'Tenaga sales dihitung berdasarkan jumlah kunjungan selama 3 bulan terakhir',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStatCard(BuildContext context, String title, String value) {
    return Container(
      height: ScreenUtil().screenHeight * 0.07,
      width: 200,
      padding: const EdgeInsets.all(12),
      decoration: itemCardDecoration(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: captionStyle),
          const Spacer(),
          Text(value, style: footnoteStyle),
        ],
      ),
    );
  }

  Widget buildSalesForceSection(
    WidgetRef ref,
    DateTime salesForceCountStartDate,
  ) {
    final filteredVisitListState = ref.watch(
      filteredVisitControllerProvider(salesForceCountStartDate),
    );

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Perkiraan Tenaga Sales yang Dibutuhkan',
                  style: titleStyle,
                ),
                IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {},
                  tooltip:
                      'Tenaga sales dihitung berdasarkan jumlah kunjungan selama 3 bulan terakhir',
                ),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Center(
                child: filteredVisitListState.when(
                  loading: () => const CircularProgressIndicator(),
                  data: (data) {
                    final count =
                        ref
                            .read(
                              filteredVisitControllerProvider(
                                salesForceCountStartDate,
                              ).notifier,
                            )
                            .calculateSalesForce();
                    return Text('$count Orang Sales', style: subtitleStyle);
                  },
                  error: (e, _) => Text('Error: \$e', style: errorStyle),
                ),
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
    if (polygonDataLoader == null || region == null) return [];
    return polygonDataLoader?.getPolygonsForRegion(region) ?? [];
  }

  Future<void> generateBarChartData() async {
    if (!mounted) return;

    final rodColor = Theme.of(context).colorScheme.tertiary;
    List<int> visitAmountPerDay = List.generate(31, (index) => 0);
    visitAmountPerDay = await ref
        .read(visitListControllerProvider.notifier)
        .getMonthlyVisitCount(selectedMonth ?? DateTime.now());

    if (!mounted) return;
    int newTotalVisitCount = 0;

    final newBarGroup = <BarChartGroupData>[];
    for (int i = 0; i < visitAmountPerDay.length; i++) {
      final visitInDay = visitAmountPerDay[i];
      newTotalVisitCount += visitInDay;
      newBarGroup.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(toY: visitInDay.toDouble(), color: rodColor),
          ],
        ),
      );
    }

    if (newBarGroup.isNotEmpty && mounted) {
      setState(() {
        barGroup = newBarGroup;
        totalVisitCount = newTotalVisitCount;
      });
    }
  }
}
