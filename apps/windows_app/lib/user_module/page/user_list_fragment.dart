import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:windows_app/user_module/domain/entities/user_domain.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
import 'package:windows_app/utils/functions.dart';
import 'package:windows_app/utils/popups.dart';

class UserListFragment extends StatefulHookConsumerWidget {
  const UserListFragment({super.key});

  @override
  ConsumerState<UserListFragment> createState() => _UserListFragment();
}

class _UserListFragment extends ConsumerState<UserListFragment> {
  RoleFilter selectedRole = RoleFilter.all;

  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () {
        ref.read(userListControllerProvider.notifier).resetSearch();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final userListState = ref.watch(userListControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Daftar Pengguna', style: titleStyle),
          const SizedBox(height: 10),

          _buildHeader(),
          const SizedBox(height: 12),

          // Content area
          Expanded(
            child: userListState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (salesList) {
                if (salesList == null || salesList.isEmpty) {
                  return Center(
                    child: Text(
                      'Data Pengguna Tidak Ditemukan',
                      style: bodyStyle,
                    ),
                  );
                }

                return LayoutBuilder(
                  builder: (context, constraints) {
                    final crossCount = getCrossAxisCount(constraints);
                    return GridView.builder(
                      padding: const EdgeInsets.only(top: 8),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossCount,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: getChildAspectRatio(constraints),
                      ),
                      itemCount: salesList.length,
                      itemBuilder: (context, index) {
                        final data = salesList[index];

                        final name = data.fields?.fullName?.stringValue ?? '-';
                        final email = data.fields?.email?.stringValue ?? '-';
                        final role = data.fields?.role?.stringValue ?? '-';
                        final registerDate = DateFormat(
                          'd MMM yyyy',
                        ).format(DateTime.parse(data.createTime ?? ''));

                        return itemCard(
                          context: context,
                          icon: Icons.person,
                          title: name,
                          subtitle: email,
                          secondarySubtitle:
                              data.fields?.phoneNumber?.stringValue != null
                                  ? phoneNumberFormat(
                                    data.fields?.phoneNumber?.stringValue ?? '',
                                  )
                                  : null,
                          leftBottomText:
                              role[0].toUpperCase() + role.substring(1),
                          rightBottomText: registerDate.toString(),
                          onTap: () {
                            showUserDataPopup(
                              ref: ref,
                              context: context,
                              userData: data,
                            );
                          },
                        );
                      },
                    );
                  },
                );
              },
              error: (error, _) {
                final exception = error as ApiException;
                return Center(
                  child: Text(
                    'Gagal Memuat Daftar Pengguna: ${exception.message}',
                    style: errorStyle,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: ScreenUtil().screenWidth * 0.25,
              child: customSearchBar(
                context: context,
                hint: 'Cari Pengguna...',
                onChanged: (query) {
                  ref
                      .read(userListControllerProvider.notifier)
                      .searchUser(query);
                },
              ),
            ),
            const SizedBox(width: 16),

            IconButton(
              onPressed: () {
                selectedRole = RoleFilter.all;
                ref
                    .read(userListControllerProvider.notifier)
                    .changeRoleFilter(selectedRole);
              },
              icon: Icon(
                Icons.group_work,
                color:
                    selectedRole == RoleFilter.all
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
              ),
              tooltip: 'Tampilkan Semua',
            ),
            const SizedBox(width: 12),

            IconButton(
              onPressed: () {
                selectedRole = RoleFilter.admin;
                ref
                    .read(userListControllerProvider.notifier)
                    .changeRoleFilter(selectedRole);
              },
              icon: Icon(
                Icons.admin_panel_settings,
                color:
                    selectedRole == RoleFilter.admin
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
              ),
              tooltip: 'Tampilkan Admin',
            ),
            const SizedBox(width: 12),

            IconButton(
              onPressed: () {
                selectedRole = RoleFilter.sales;
                ref
                    .read(userListControllerProvider.notifier)
                    .changeRoleFilter(selectedRole);
              },
              icon: Icon(
                Icons.people,
                color:
                    selectedRole == RoleFilter.sales
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
              ),
              tooltip: 'Tampilkan Sales',
            ),
          ],
        ),

        Row(
          children: [
            IconButton(
              onPressed: () async {
                showUserDataPopup(ref: ref, context: context);
              },
              icon: const Icon(Icons.add),
              tooltip: 'Tambah Pengguna Baru',
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: _refreshUserList,
              icon: const Icon(Icons.refresh),
              tooltip: 'Segarkan',
            ),
          ],
        ),
      ],
    );
  }

  List<String> generateListFromFirebaseList(List<Email> listData) {
    final List<String> result = [];
    for (var emailObject in listData) {
      if (emailObject.stringValue != null) {
        result.add(emailObject.stringValue!);
      }
    }
    return result;
  }

  Future<void> _refreshUserList() async {
    ref.invalidate(userListControllerProvider);
  }
}
