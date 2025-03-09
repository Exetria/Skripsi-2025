import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderListPage extends StatefulHookConsumerWidget {
  const OrderListPage({super.key});

  @override
  ConsumerState<OrderListPage> createState() => _OrderListPage();
}

class _OrderListPage extends ConsumerState<OrderListPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("OrderListPage"));
  }
}
