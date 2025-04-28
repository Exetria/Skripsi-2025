import 'package:android_app/user_management_module/domain/entities/sign_in_domain.dart';
import 'package:android_app/user_management_module/domain/repository/sign_in_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_controller.g.dart';

@riverpod
class SignInController extends _$SignInController {
  @override
  AsyncValue<SignInDomain?> build() {
    return const AsyncLoading();
  }

  Future<AsyncValue<SignInDomain?>> signIn({
    required String email,
    required String password,
  }) async {
    final repository = ref.watch(signInRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.signIn(email: email, password: password);

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }
}
