import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/live_location_module/domain/entities/live_location_domain.dart';
import 'package:windows_app/live_location_module/domain/repository/live_location_repository.dart';

part 'live_location_controller.g.dart';

@Riverpod(keepAlive: true)
class LiveLocationController extends _$LiveLocationController {
  @override
  FutureOr<LiveLocationDomain?> build(String userId) async {
    final repository = ref.watch(GetLocationRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.getLiveLocation(userId: userId);

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state.value;
  }
}
