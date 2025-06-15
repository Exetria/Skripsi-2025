import 'dart:async';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final connectionStatusProvider = StateProvider<bool>((ref) => false);

void startConnectionChecker(WidgetRef ref) {
  Timer.periodic(const Duration(seconds: 10), (_) async {
    final isConnected = await _checkConnection();
    ref.read(connectionStatusProvider.notifier).state = isConnected;
  });
}

Future<bool> _checkConnection() async {
  try {
    final result = await InternetAddress.lookup(
      'google.com',
    ).timeout(const Duration(seconds: 5));
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } catch (_) {
    return false;
  }
}
