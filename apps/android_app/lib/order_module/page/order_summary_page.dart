import 'package:android_app/order_module/page/controller/order_list_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderSummaryPage extends StatefulHookConsumerWidget {
  const OrderSummaryPage({super.key});

  @override
  ConsumerState<OrderSummaryPage> createState() => _OrderSummaryPage();
}

class _OrderSummaryPage extends ConsumerState<OrderSummaryPage> {
  int totalOrderCount = 0;
  int totalOrderPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Laporan Penjualan',
        showLeftButton: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Chart Area
            AspectRatio(aspectRatio: 1.6, child: buildOrderLineChart()),

            SizedBox(height: 20.h),

            // Info Cards
            Column(
              children: [
                customListItem(
                  context: context,
                  onTap: () {},
                  leadIcon: Icons.shopping_cart,
                  title: 'Total Order',
                  subtitle: totalOrderCount.toString(),
                ),
                SizedBox(height: 12.h),
                customListItem(
                  context: context,
                  onTap: () {},
                  leadIcon: Icons.attach_money,
                  title: 'Total Nominal Order',
                  subtitle: rupiahFormat(totalOrderPrice),
                ),
                SizedBox(height: 12.h),
              ],
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
            .getMonthlyOrderTotalPrice(DateTime.now());

        List<int> currentMonthOrderCount = ref
            .read(orderListControllerProvider.notifier)
            .getMonthlyOrderCount(DateTime.now());

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
                Text('Penjualan Mingguan', style: subtitleStyle),
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
                          sideTitles: SideTitles(
                            showTitles: false,
                            reservedSize: 32,
                          ),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 32,
                            interval: 7,
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

  Widget _buildInfoCard({
    required BuildContext context,
    required String label,
    required String value,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: captionStyle),
            SizedBox(height: 4.h),
            Text(value, style: footnoteStyle),
          ],
        ),
      ),
    );
  }
}
