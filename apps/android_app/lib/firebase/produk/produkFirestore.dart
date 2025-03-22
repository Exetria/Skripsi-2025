import 'package:android_app/firebase/produk/produkModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firestoreProvider = Provider((ref) => FirebaseFirestore.instance);
final collectionProvider = Provider(
  (ref) => ref.watch(firestoreProvider).collection('product'),
);

// Create
Future<void> createDocument(WidgetRef ref) async {
  final ProdukModel produkModel = ProdukModel(
    namaBarang: 'barang baru',
    mic: 1,
    ukuran: ['Small', 'Medium', 'Large'],
    isi: 1,
    harga: 50000,
  );

  await ref.read(collectionProvider).add(produkModel.toJson());
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
