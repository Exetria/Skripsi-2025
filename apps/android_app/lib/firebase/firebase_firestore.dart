import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firestoreProvider = Provider((ref) => FirebaseFirestore.instance);
final collectionProvider = Provider(
  (ref) => ref.watch(firestoreProvider).collection('your_collection'),
);

// Create
Future<void> createDocument(Map<String, dynamic> data, WidgetRef ref) async {
  await ref.read(collectionProvider).add(data);
}

// Read (Stream of documents)
final documentsProvider = StreamProvider((ref) {
  return ref.watch(collectionProvider).snapshots();
});

// Update
Future<void> updateDocument(
  String docId,
  Map<String, dynamic> newData,
  WidgetRef ref,
) async {
  await ref.read(collectionProvider).doc(docId).update(newData);
}

// Delete
Future<void> deleteDocument(String docId, WidgetRef ref) async {
  await ref.read(collectionProvider).doc(docId).delete();
}
