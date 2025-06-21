import 'package:android_app/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderSummaryPage extends StatefulHookConsumerWidget {
  const OrderSummaryPage({super.key});

  @override
  ConsumerState<OrderSummaryPage> createState() => _OrderSummaryPage();
}

class _OrderSummaryPage extends ConsumerState<OrderSummaryPage> {
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
        child: const Column(
          children: [
            Expanded(child: Center(child: Text('Order Summary Page'))),
          ],
        ),
      ),
    );
  }
}
