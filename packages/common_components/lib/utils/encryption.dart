import 'package:common_components/global/encryption_helper.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

// Encrypt data
String encryptData({required String data}) {
  if (data == '') return '';

  final encrypter = encrypt.Encrypter(encrypt.AES(EncryptionHelper.key));
  final encrypted = encrypter.encrypt(data, iv: EncryptionHelper.iv);
  return encrypted.base64;
}

// Decrypt data
String decryptData({required String encryptedData}) {
  final encrypter = encrypt.Encrypter(encrypt.AES(EncryptionHelper.key));
  final decrypted = encrypter.decrypt64(encryptedData, iv: EncryptionHelper.iv);
  return decrypted;
}

// Encrypt password
String encryptPassword({required String password}) {
  if (password == '') return '';

  final encrypter = encrypt.Encrypter(
    encrypt.AES(PasswordEncryptionHelper.key),
  );
  final encrypted = encrypter.encrypt(password, iv: EncryptionHelper.iv);
  return encrypted.base64;
}

// Decrypt password
String decryptPassword({required String encryptedPassword}) {
  final encrypter = encrypt.Encrypter(
    encrypt.AES(PasswordEncryptionHelper.key),
  );
  final decryptedPassword = encrypter.decrypt64(
    encryptedPassword,
    iv: EncryptionHelper.iv,
  );
  return decryptedPassword;
}
