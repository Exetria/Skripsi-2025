import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:windows_app/helper/encryptionHelper.dart';

class SharedPreferenceHelper {
  // Save encrypted data to SharedPreferences
  static Future<void> saveDataToSp({
    required String key,
    required String data,
    bool encrypt = true,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final encryptedData = encrypt ? encryptData(data: data) : data;
    await prefs.setString(key, encryptedData);
  }

  // Get and decrypt data from SharedPreferences
  static Future<String?> getDataFromSp({
    required String key,
    bool decrypt = true,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final encryptedData = prefs.getString(key);
    if (encryptedData != null) {
      return decrypt
          ? decryptData(encryptedData: encryptedData)
          : encryptedData;
    }
    return null;
  }

  // Encrypt data
  static String encryptData({required String data}) {
    if (data == '') return '';

    final encrypter = encrypt.Encrypter(encrypt.AES(encryptionHelper.key));
    final encrypted = encrypter.encrypt(data, iv: encryptionHelper.iv);
    return encrypted.base64;
  }

  // Decrypt data
  static String decryptData({required String encryptedData}) {
    final encrypter = encrypt.Encrypter(encrypt.AES(encryptionHelper.key));
    final decrypted = encrypter.decrypt64(
      encryptedData,
      iv: encryptionHelper.iv,
    );
    return decrypted;
  }

  // Save User Data to SP
  static void saveUserDataToSp({
    required String localId,
    required String email,
    required String password,
    required String displayName,
    required String role,
    required String idToken,
    required String refreshToken,
  }) {
    SharedPreferenceHelper.saveDataToSp(key: 'localId', data: localId);
    SharedPreferenceHelper.saveDataToSp(key: 'email', data: email);
    SharedPreferenceHelper.saveDataToSp(key: 'password', data: password);
    SharedPreferenceHelper.saveDataToSp(key: 'displayName', data: displayName);
    SharedPreferenceHelper.saveDataToSp(key: 'role', data: role);
    SharedPreferenceHelper.saveDataToSp(key: 'idToken', data: idToken);
    SharedPreferenceHelper.saveDataToSp(
      key: 'refreshToken',
      data: refreshToken,
    );
  }

  // Clear User Data in SP
  static void clearUserDataInSp() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
