import 'dart:async';

import 'package:android_app/live_location_module/domain/repository/live_location_repository.dart';
import 'package:android_app/utils/functions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void startLiveLocationUpdater(WidgetRef ref) {
  // Initial update
  updateLiveLocation(ref);

  // Loop to update live location
  Timer.periodic(const Duration(seconds: 60), (_) async {
    updateLiveLocation(ref);
  });
}

void updateLiveLocation(WidgetRef ref) async {
  final repository = ref.watch(UpdateLocationRepositoryProvider);
  final currentLocation = await getCurrentPosition();
  try {
    await repository.updateLocation(currentLocation: currentLocation);
  } catch (e) {
    // pass
  }
}
