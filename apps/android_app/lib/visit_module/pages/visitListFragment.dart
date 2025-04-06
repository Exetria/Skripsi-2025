import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class VisitListFragment extends StatefulHookConsumerWidget {
  const VisitListFragment({super.key});

  @override
  ConsumerState<VisitListFragment> createState() => _VisitListFragment();
}

class _VisitListFragment extends ConsumerState<VisitListFragment> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final visits = [
      'Visit A',
      'Visit B',
      'Visit C',
    ]; // Replace this with real data
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Date Selector
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => _changeDate(-1),
                icon: const Icon(Icons.arrow_left),
              ),
              Text(
                DateFormat.yMMMMd().format(selectedDate),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () => _changeDate(1),
                icon: const Icon(Icons.arrow_right),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Visit List
          Expanded(
            child: ListView.builder(
              itemCount: visits.length,
              itemBuilder: (context, index) {
                return Card(child: ListTile(title: Text(visits[index])));
              },
            ),
          ),
        ],
      ),
    );
  }

  void _changeDate(int offset) {
    setState(() {
      selectedDate = selectedDate.add(Duration(days: offset));
    });
  }
}
    // Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       ElevatedButton(
    //         onPressed: () async {
    //           await createDocument(ref);
    //           ScaffoldMessenger.of(
    //             context,
    //           ).showSnackBar(const SnackBar(content: Text('fx1 done')));
    //         },
    //         child: const Text('Function 1'),
    //       ),
    //       const SizedBox(height: 16),
    //       ElevatedButton(
    //         onPressed: () async {
    //           await Future.delayed(const Duration(seconds: 2));
    //           ScaffoldMessenger.of(
    //             context,
    //           ).showSnackBar(const SnackBar(content: Text('fx2 done')));
    //         },
    //         child: const Text('Function 2'),
    //       ),
    //       const SizedBox(height: 16),
    //       ElevatedButton(
    //         onPressed: () async {
    //           await Future.delayed(const Duration(seconds: 2));
    //           ScaffoldMessenger.of(
    //             context,
    //           ).showSnackBar(const SnackBar(content: Text('fx3 done')));
    //         },
    //         child: const Text('Function 3'),
    //       ),
    //     ],
    //   ),
    // )