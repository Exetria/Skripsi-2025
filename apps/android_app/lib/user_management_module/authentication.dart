import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);

// Sign Up
// Future<UserCredential?> signUp(
//   String email,
//   String password,
//   WidgetRef ref,
// ) async {
//   try {
//     return await ref
//         .read(firebaseAuthProvider)
//         .createUserWithEmailAndPassword(email: email, password: password);
//   } catch (e) {
//     print('Sign Up Error: $e');
//     return null;
//   }
// }

// Sign In
Future<String?> signIn(String email, String password, WidgetRef ref) async {
  try {
    await ref
        .read(firebaseAuthProvider)
        .signInWithEmailAndPassword(email: email, password: password);

    return null;
  } on FirebaseAuthException catch (e) {
    return e.code;
  } catch (e) {
    return 'An Unknown Error has Occured';
  }
}

// Sign Out
Future<void> signOut(WidgetRef ref) async {
  await ref.read(firebaseAuthProvider).signOut();
}

// Auth State Listener
final authStateProvider = StreamProvider<User?>((ref) {
  return ref.watch(firebaseAuthProvider).authStateChanges();
});
