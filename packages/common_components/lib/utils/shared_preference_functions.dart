import 'package:common_components/common_components.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:shared_preferences/shared_preferences.dart';

// Save User Data to SP
void saveUserDataToSp({
  required String localId,
  required String displayName,
  required String email,
  required String password,
  required String phoneNumber,
  required String role,
  required String idToken,
  required String refreshToken,
}) {
  saveDataToSp(key: 'localId', data: localId);
  saveDataToSp(key: 'displayName', data: displayName);
  saveDataToSp(key: 'email', data: email);
  saveDataToSp(key: 'password', data: password);
  saveDataToSp(key: 'phoneNumber', data: phoneNumber);
  saveDataToSp(key: 'role', data: role);
  saveDataToSp(key: 'idToken', data: idToken);
  saveDataToSp(key: 'refreshToken', data: refreshToken);
}

// Clear User Data in SP
void clearUserDataInSp() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('localId');
  await prefs.remove('displayName');
  await prefs.remove('email');
  await prefs.remove('password');
  await prefs.remove('phoneNumber');
  await prefs.remove('role');
  await prefs.remove('idToken');
  await prefs.remove('refreshToken');
  // prefs.clear();
}

// Save encrypted data to SharedPreferences
Future<void> saveDataToSp({
  required String key,
  required String data,
  bool encrypt = true,
}) async {
  final prefs = await SharedPreferences.getInstance();
  final encryptedData = encrypt ? _encryptData(data: data) : data;
  await prefs.setString(key, encryptedData);
}

// Get and decrypt data from SharedPreferences
Future<String?> getDataFromSp({
  required String key,
  bool decrypt = true,
}) async {
  final prefs = await SharedPreferences.getInstance();
  final encryptedData = prefs.getString(key);
  if (encryptedData != null) {
    return decrypt ? _decryptData(encryptedData: encryptedData) : encryptedData;
  }
  return null;
}

// Encrypt data
String _encryptData({required String data}) {
  if (data == '') return '';

  final encrypter = encrypt.Encrypter(encrypt.AES(EncryptionHelper.key));
  final encrypted = encrypter.encrypt(data, iv: EncryptionHelper.iv);
  return encrypted.base64;
}

// Decrypt data
String _decryptData({required String encryptedData}) {
  final encrypter = encrypt.Encrypter(encrypt.AES(EncryptionHelper.key));
  final decrypted = encrypter.decrypt64(encryptedData, iv: EncryptionHelper.iv);
  return decrypted;
}
