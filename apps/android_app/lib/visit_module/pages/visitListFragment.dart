import 'package:android_app/firebase/produk/produkFirestore.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisitListFragment extends StatefulHookConsumerWidget {
  const VisitListFragment({super.key});

  @override
  ConsumerState<VisitListFragment> createState() => _VisitListFragment();
}

class _VisitListFragment extends ConsumerState<VisitListFragment> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              await createDocument(ref);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('fx1 done')));
            },
            child: const Text('Function 1'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () async {
              await Future.delayed(const Duration(seconds: 2));
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('fx2 done')));
            },
            child: const Text('Function 2'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () async {
              await Future.delayed(const Duration(seconds: 2));
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('fx3 done')));
            },
            child: const Text('Function 3'),
          ),
        ],
      ),
    );
  }
}
