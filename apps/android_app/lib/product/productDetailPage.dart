import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailPage extends StatefulHookConsumerWidget {
  const ProductDetailPage({super.key});

  @override
  ConsumerState<ProductDetailPage> createState() => _ProductDetailPage();
}

class _ProductDetailPage extends ConsumerState<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("ProductDetailPage"));
  }
}
