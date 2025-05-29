import 'dart:convert';
import 'dart:io';

import 'package:googleapis_auth/auth_io.dart';

Future<String> getAccessToken() async {
  final credentialsJson =
      File(
        'D:/Documents/GitHub/Skripsi-2025/apps/windows_app/lib/utils/service_account.json',
      ).readAsStringSync();
  final credentials = ServiceAccountCredentials.fromJson(
    json.decode(credentialsJson),
  );

  final scopes = [
    'https://www.googleapis.com/auth/identitytoolkit',
    'https://www.googleapis.com/auth/firebase',
  ];

  final authClient = await clientViaServiceAccount(credentials, scopes);
  return authClient.credentials.accessToken.data;
}
