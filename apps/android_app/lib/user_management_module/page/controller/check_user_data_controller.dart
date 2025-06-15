import 'package:android_app/user_management_module/domain/entities/check_user_data_domain.dart';
import 'package:android_app/user_management_module/domain/repository/authentication_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'check_user_data_controller.g.dart';

@riverpod
class CheckUserDataController extends _$CheckUserDataController {
  @override
  AsyncValue<CheckUserDataDomain?> build() {
    return const AsyncLoading();
  }

  Future<CheckUserDataDomain?> checkUserData({
    required String idToken,
    required String uid,
  }) async {
    final repository = ref.watch(checkUserRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.checkUserData(idToken: idToken, uid: uid);

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state.value;
  }

  Future<CheckUserDataDomain?> updateFcmToken({
    required String fcmToken,
  }) async {
    final repository = ref.watch(updateFcmTokenRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.updateFcmToken(fcmToken: fcmToken);

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state.value;
  }
}
