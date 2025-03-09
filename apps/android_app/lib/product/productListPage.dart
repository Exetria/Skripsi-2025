import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductListPage extends StatefulHookConsumerWidget {
  const ProductListPage({super.key});

  @override
  ConsumerState<ProductListPage> createState() => _ProductListPage();
}

class _ProductListPage extends ConsumerState<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("ProductListPage"));
  }
}
