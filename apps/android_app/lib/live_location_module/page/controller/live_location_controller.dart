import 'dart:async';

import 'package:android_app/live_location_module/domain/repository/live_location_repository.dart';
import 'package:android_app/utils/functions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void startLiveLocationUpdater(WidgetRef ref) {
  final repository = ref.watch(UpdateLocationRepositoryProvider);

  Timer.periodic(const Duration(seconds: 180), (_) async {
    final currentLocation = await getCurrentPosition();
    try {
      await repository.updateLocation(currentLocation: currentLocation);
    } catch (e) {
      // pass
    }
  });
}
