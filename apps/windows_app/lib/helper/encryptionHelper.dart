import 'package:encrypt/encrypt.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EncryptionHelper {
  final Key key;
  final IV iv;

  EncryptionHelper()
    : key = Key.fromUtf8(dotenv.env['AES_SEED'] ?? ''),
      iv = IV.fromUtf8(dotenv.env['IV_SEED'] ?? '');
}

late EncryptionHelper encryptionHelper;
