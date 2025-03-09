import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisitListPage extends StatefulHookConsumerWidget {
  const VisitListPage({super.key});

  @override
  ConsumerState<VisitListPage> createState() => _VisitListPage();
}

class _VisitListPage extends ConsumerState<VisitListPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("VisitListPage"));
  }
}
