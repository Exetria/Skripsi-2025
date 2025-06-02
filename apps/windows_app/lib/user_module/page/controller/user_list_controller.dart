import 'package:common_components/common_components.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';
import 'package:windows_app/user_module/domain/repository/user_repository.dart';

part 'user_list_controller.g.dart';

enum RoleFilter { all, admin, sales }

@Riverpod(keepAlive: true)
class UserListController extends _$UserListController {
  List<UserDomain>? _userList;
  RoleFilter _roleFilter = RoleFilter.all;
  String _searchQuery = '';

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

  void changeRoleFilter(RoleFilter filter) {
    _roleFilter = filter;
    _applyFilters();
  }

  void searchUser(String query) {
    _searchQuery = query;
    _applyFilters();
  }

  void _applyFilters() {
    if (_userList == null) return;

    var filtered = _userList!;

    // Filter by role
    if (_roleFilter != RoleFilter.all) {
      final roleKey = _roleFilter == RoleFilter.admin ? 'admin' : 'sales';
      filtered =
          filtered
              .where((u) => u.fields?.role?.stringValue == roleKey)
              .toList();
    }

    // Filter by search query
    if (_searchQuery.isNotEmpty) {
      filtered =
          filtered.where((u) {
            final name = u.fields?.fullName?.stringValue ?? '';
            return name.toLowerCase().contains(_searchQuery.toLowerCase());
          }).toList();
    }

    state = AsyncData(filtered);
  }

  void resetSearch() {
    _searchQuery = '';
    _roleFilter = RoleFilter.all;
    _applyFilters();
  }

  String getUserName({required String id}) {
    if (state is! AsyncData) {
      return 'Memuat...';
    }

    final userList = _userList ?? [];

    for (var user in userList) {
      final userId = getIdFromName(name: user.name);

      if (userId == id) {
        return user.fields?.userName?.stringValue ?? '-';
      }
    }

    return 'Nama Tidak Ditemukan';
  }

  Future<List<String>> getAllSalesId() async {
    while (state is! AsyncData) {
      await Future.delayed(const Duration(milliseconds: 100));
    }

    List<String> salesIdList = [];

    for (UserDomain user in _userList ?? []) {
      if (user.fields?.role?.stringValue == 'sales') {
        String salesId = getIdFromName(name: user.name);
        if (salesId.isNotEmpty) {
          salesIdList.add(salesId);
        }
      }
    }

    return salesIdList;
  }
}
