import 'package:android_app/variables.dart';
import 'package:android_app/visit_module/visitDomain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final collectionProvider = Provider(
  (ref) => ref.watch(firestoreProvider).collection('visits'),
);

// Create a new visit document (Dummy Data)
Future<void> createVisit(WidgetRef ref) async {
  final VisitDomain visit = VisitDomain(
    salesId: 'SALES123',
    customerId: 'CUST456',
    customerName: 'John Doe Store',
    visitDate: '2025-03-25T10:00:00Z', // ISO 8601 format
    checkInTime: null,
    checkOutTime: null,
    location: {
      'latitude': -6.2088,
      'longitude': 106.8456,
    }, // Example Jakarta coords
    visitStatus: 'Planned',
    notes: 'First-time visit to discuss product options.',
    orderId: null,
    createdAt: DateTime.now().toIso8601String(),
    updatedAt: DateTime.now().toIso8601String(),
  );

  await ref.read(collectionProvider).add(visit.toJson());
}

// Read (Stream of visit documents)
final visitsProvider = StreamProvider((ref) {
  return ref.watch(collectionProvider).snapshots();
});

// Read (Stream of visits for a specific salesperson)
final visitsBySalesProvider = StreamProvider.family((ref, String salesId) {
  return ref
      .watch(collectionProvider)
      .where('sales_id', isEqualTo: salesId)
      .snapshots();
});

// Update an existing visit document
Future<void> updateVisit(
  String docId,
  Map<String, dynamic> newData,
  WidgetRef ref,
) async {
  await ref.read(collectionProvider).doc(docId).update(newData);
}

// Delete a visit document
Future<void> deleteVisit(String docId, WidgetRef ref) async {
  await ref.read(collectionProvider).doc(docId).delete();
}
