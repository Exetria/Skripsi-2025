import 'dart:convert';

import 'package:common_components/global/encryption_helper.dart';
import 'package:crypto/crypto.dart';
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

// Encrypt password (1 way using SHA-256)
String encryptPassword({required String password}) {
  final String data = "${PasswordEncryptionHelper.secretKey}::$password";
  final bytes = utf8.encode(data);
  final digest = sha256.convert(bytes);
  return digest.toString();
}
