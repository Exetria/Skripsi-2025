import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisitDetailPage extends StatefulHookConsumerWidget {
  const VisitDetailPage({super.key});

  @override
  ConsumerState<VisitDetailPage> createState() => _VisitDetailPage();
}

class _VisitDetailPage extends ConsumerState<VisitDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("VisitDetailPage"));
  }
}
