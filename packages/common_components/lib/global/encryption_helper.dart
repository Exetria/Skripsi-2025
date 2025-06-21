import 'package:encrypt/encrypt.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EncryptionHelper {
  static final Key key = Key.fromUtf8(dotenv.env['AES_SEED'] ?? '');
  static final IV iv = IV.fromUtf8(dotenv.env['IV_SEED'] ?? '');
}

class PasswordEncryptionHelper {
  static final secretKey = dotenv.env['SECRET_KEY'] ?? '';
}
