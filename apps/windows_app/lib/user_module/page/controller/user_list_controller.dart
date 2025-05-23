import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';
import 'package:windows_app/user_module/domain/repository/user_repository.dart';

part 'user_list_controller.g.dart';

@Riverpod(keepAlive: true)
class UserListController extends _$UserListController {
  List<UserDomain>? _userList;

  @override
  FutureOr<List<UserDomain>?> build() async {
    final repository = ref.watch(UserListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getUserList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );
    _userList = state.value;
    return state.value;
  }

  void searchUser(String query) {
    if (_userList == null) {
      return;
    }

    final filteredList =
        _userList?.where((user) {
          final userName = user.fields?.fullName?.stringValue ?? '';
          return userName.toLowerCase().contains(query.toLowerCase());
        }).toList() ??
        [];

    state = AsyncData(filteredList);
  }
}
