import 'package:common_components/common_components.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:windows_app/utils/functions.dart';
import 'package:windows_app/visit_module/domain/entities/visit_domain.dart';
import 'package:windows_app/visit_module/page/controller/filtered_visit_controller.dart';

class MainReportFragment extends StatefulHookConsumerWidget {
  const MainReportFragment({super.key});

  @override
  ConsumerState<MainReportFragment> createState() => _MainReportFragmentState();
}

class _MainReportFragmentState extends ConsumerState<MainReportFragment> {
  final salesForceCountStartDate = DateTime(
    DateTime.now().year,
    DateTime.now().month - 3,
    DateTime.now().day,
  );

  DateTimeRange _selectedRange;
  String _selectedProduct;
  String _selectedSales;

  final List<String> _products = ['Semua Produk', 'Produk A', 'Produk B'];
  final List<String> _sales = ['Semua Sales', 'Sales 1', 'Sales 2'];

  _MainReportFragmentState()
    : _selectedRange = DateTimeRange(
        start: DateTime.now().subtract(const Duration(days: 7)),
        end: DateTime.now(),
      ),
      _selectedProduct = 'Semua Produk',
      _selectedSales = 'Semua Sales';

  @override
  Widget build(BuildContext context) {
    final filteredVisitListState = ref.watch(
      filteredVisitControllerProvider(salesForceCountStartDate),
    );

    final cs = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 1️⃣ Date & Filter Bar
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () async {
                  final picked = await showDateRangePicker(
                    context: context,
                    firstDate: DateTime(2020),
                    lastDate: DateTime.now(),
                    initialDateRange: _selectedRange,
                  );
                  if (picked != null) {
                    setState(() => _selectedRange = picked);
                  }
                },
                icon: const Icon(Icons.date_range),
                label: Text(
                  '${DateFormat('dd/MM/yyyy').format(_selectedRange.start)} – '
                  '${DateFormat('dd/MM/yyyy').format(_selectedRange.end)}',
                ),
              ),
              const SizedBox(width: 12),
              DropdownButton<String>(
                value: _selectedProduct,
                items:
                    _products
                        .map((p) => DropdownMenuItem(value: p, child: Text(p)))
                        .toList(),
                onChanged: (v) {
                  if (v != null) setState(() => _selectedProduct = v);
                },
              ),
              const SizedBox(width: 12),
              DropdownButton<String>(
                value: _selectedSales,
                items:
                    _sales
                        .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                        .toList(),
                onChanged: (v) {
                  if (v != null) setState(() => _selectedSales = v);
                },
              ),
              const Spacer(),
              IconButton(
                onPressed: _refreshData,
                icon: const Icon(Icons.refresh),
                tooltip: 'Segarkan',
              ),
              IconButton(
                onPressed: _exportReport,
                icon: const Icon(Icons.download),
                tooltip: 'Ekspor',
              ),
            ],
          ),
          const SizedBox(height: 16),

          // 2️⃣ KPI Summary Tiles
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildStatCard('Total Penjualan', 'Rp 1.250.000'),
              const SizedBox(width: 12),
              buildStatCard('Kunjungan Selesai', '150'),
              const SizedBox(width: 12),
              buildStatCard('Rata-rata Nilai Pesanan', 'Rp 75.000'),
              const SizedBox(width: 12),
              buildStatCard('% Target Tercapai', '85 %'),
            ],
          ),
          const SizedBox(height: 16),

          // 📊 Charts Row: Bar + Line
          SizedBox(
            height: 300,
            child: LayoutBuilder(
              builder: (context, constraints) {
                final isNarrow = constraints.maxWidth < 800;

                final barChartCard = buildCard(
                  title: 'Distribusi Penjualan',
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceAround,
                      maxY: 100,
                      barTouchData: const BarTouchData(enabled: true),
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              const labels = ['P1', 'P2', 'P3', 'P4'];
                              return Text(labels[value.toInt()]);
                            },
                          ),
                        ),
                        leftTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: true),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      barGroups: [
                        BarChartGroupData(
                          x: 0,
                          barRods: [
                            BarChartRodData(toY: 40, color: cs.primary),
                          ],
                        ),
                        BarChartGroupData(
                          x: 1,
                          barRods: [
                            BarChartRodData(toY: 30, color: cs.secondary),
                          ],
                        ),
                        BarChartGroupData(
                          x: 2,
                          barRods: [
                            BarChartRodData(toY: 20, color: cs.tertiary),
                          ],
                        ),
                        BarChartGroupData(
                          x: 3,
                          barRods: [
                            BarChartRodData(toY: 60, color: cs.primary),
                          ],
                        ),
                      ],
                    ),
                  ),
                );

                final lineChartCard = buildCard(
                  title: 'Penjualan Bulanan',
                  child: LineChart(
                    LineChartData(
                      gridData: const FlGridData(show: false),
                      titlesData: const FlTitlesData(
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 22,
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 28,
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          isCurved: true,
                          spots: const [
                            FlSpot(0, 3),
                            FlSpot(1, 2),
                            FlSpot(2, 5),
                            FlSpot(3, 3.1),
                            FlSpot(4, 4),
                            FlSpot(5, 3),
                            FlSpot(6, 4.5),
                          ],
                          barWidth: 3,
                          color: cs.primary,
                          dotData: const FlDotData(show: false),
                        ),
                      ],
                    ),
                  ),
                );

                return isNarrow
                    ? Column(
                      children: [
                        barChartCard,
                        const SizedBox(height: 12),
                        lineChartCard,
                      ],
                    )
                    : Row(
                      children: [
                        Expanded(child: barChartCard),
                        const SizedBox(width: 12),
                        Expanded(child: lineChartCard),
                      ],
                    );
              },
            ),
          ),
          const SizedBox(height: 16),

          // 🗺️ Visit & Sales Force Section
          SizedBox(
            height: 300,
            child: LayoutBuilder(
              builder: (context, constraints) {
                final isNarrow = constraints.maxWidth < 800;
                return isNarrow
                    ? Column(
                      children: [
                        buildVisitsSection(),
                        const SizedBox(width: 12),
                        buildSalesForceSection(filteredVisitListState),
                      ],
                    )
                    : Row(
                      children: [
                        Expanded(child: buildVisitsSection()),
                        const SizedBox(width: 12),
                        Expanded(
                          child: buildSalesForceSection(filteredVisitListState),
                        ),
                      ],
                    );
              },
            ),
          ),
          const SizedBox(height: 16),

          // 🗺️ Map
          SizedBox(
            height: 720,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return buildMapSection();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStatCard(String title, String value) {
    return Container(
      height: 80,
      width: 200,
      padding: const EdgeInsets.all(12),
      decoration: itemCardDecoration(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: captionStyle),
          const Spacer(),
          Text(value, style: subtitleStyle),
        ],
      ),
    );
  }

  Widget buildVisitsSection() {
    return buildCard(
      title: 'Daftar Kunjungan',
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, i) {
          return ListTile(
            leading: const Icon(Icons.directions_walk),
            title: Text('Kunjungan #${i + 1}'),
            subtitle: const Text('Customer XYZ'),
            onTap: () => _centerMapOnVisit(i),
          );
        },
      ),
    );
  }

  Widget buildSalesForceSection(
    AsyncValue<List<VisitDomain>?> filteredVisitListState,
  ) {
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
                  loading: () {
                    return const CircularProgressIndicator();
                  },
                  data: (data) {
                    final salesForceCount =
                        ref
                            .read(
                              filteredVisitControllerProvider(
                                salesForceCountStartDate,
                              ).notifier,
                            )
                            .calculateSalesForce();

                    return Text('$salesForceCount Orang Sales');
                  },
                  error: (error, stackTrace) {
                    return Text(
                      'Error: ${error.toString()}',
                      style: const TextStyle(color: Colors.red),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMapSection() {
    final cs = Theme.of(context).colorScheme;
    return buildCard(
      title: 'Peta Aktivitas',
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
                child: Icon(Icons.directions_walk, color: cs.primary, size: 32),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCard({required String title, required Widget child}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: titleStyle),
            const SizedBox(height: 8),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }

  void _refreshData() {
    // TODO: reload providers or API calls
  }

  void _exportReport() {
    // TODO: export report to Excel/PDF
  }

  void _centerMapOnVisit(int index) {
    // TODO: center map on the selected visit
  }
}
