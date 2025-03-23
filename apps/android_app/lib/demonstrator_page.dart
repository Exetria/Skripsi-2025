import 'package:android_app/customer_module/customerDataSource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DemonstratorPage extends HookConsumerWidget {
  const DemonstratorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('CRUD Demonstrator')),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: textController,
                    decoration: const InputDecoration(labelText: 'Enter item'),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          ElevatedButton(
                            onPressed: () {
                              createButton(ref);
                            },
                            child: const Text('Create'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              readButton(ref);
                            },
                            child: const Text('Read'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          ElevatedButton(
                            onPressed: () {
                              updateButton(ref);
                            },
                            child: const Text('Update'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              deleteButton(ref);
                            },
                            child: const Text('Delete'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.grey.shade200,
              child: ref
                  .watch(customersProvider)
                  // .watch(ordersProvider)
                  // .watch(productsProvider)
                  // .watch(visitsProvider)
                  .when(
                    data: (snapshot) {
                      final docs = snapshot.docs;
                      if (docs.isEmpty) {
                        return const Center(child: Text('No customers found'));
                      }
                      return ListView.builder(
                        itemCount: docs.length,
                        itemBuilder: (context, index) {
                          final data = docs[index].data();
                          return ListTile(
                            title: Text(data['company_name'] ?? 'Unnamed'),
                            subtitle: Text(
                              data['store_address'] ?? 'No address',
                            ),
                          );
                        },
                      );
                    },
                    loading: () {
                      return const Center(child: CircularProgressIndicator());
                    },
                    error: (object, stackTrace) {
                      return const Center(child: Text('Error'));
                    },
                  ),
            ),
          ),
        ],
      ),
    );
  }

  void createButton(WidgetRef ref) {
    print('asds create');
    // createCustomer(ref);
    // createOrder(ref);
    // createProduct(ref);
    // createVisit(ref);
  }

  void readButton(WidgetRef ref) {
    print('asds read');
  }

  void updateButton(WidgetRef ref) {
    print('asds update');
  }

  void deleteButton(WidgetRef ref) {
    print('asds delete');
  }
}
