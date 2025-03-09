import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerDetailPage extends StatefulHookConsumerWidget {
  const CustomerDetailPage({super.key});

  @override
  ConsumerState<CustomerDetailPage> createState() => _CustomerDetailPage();
}

class _CustomerDetailPage extends ConsumerState<CustomerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("CustomerDetailPage"));
  }
}
