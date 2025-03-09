import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerListPage extends StatefulHookConsumerWidget {
  const CustomerListPage({super.key});

  @override
  ConsumerState<CustomerListPage> createState() => _CustomerListPage();
}

class _CustomerListPage extends ConsumerState<CustomerListPage> {
  @override
  Widget build(BuildContext context) {
    return Text("CustomerListPage");
  }
}
