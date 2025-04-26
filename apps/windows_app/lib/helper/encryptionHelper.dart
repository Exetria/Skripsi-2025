import 'package:encrypt/encrypt.dart';

class EncryptionHelper {
  final Key key;
  final IV iv;

  EncryptionHelper({required this.key, required this.iv});
}

late EncryptionHelper encryptionHelper;
