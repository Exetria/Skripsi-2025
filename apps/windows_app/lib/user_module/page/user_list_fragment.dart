import 'package:common_components/utils/api_exception.dart';
import 'package:common_components/utils/formatter_functions.dart';
import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

class UserListFragment extends StatefulHookConsumerWidget {
  const UserListFragment({super.key});

  @override
  ConsumerState<UserListFragment> createState() => _UserListFragment();
}

class _UserListFragment extends ConsumerState<UserListFragment> {
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

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

              IconButton(
                onPressed: _refreshUserList,
                icon: const Icon(Icons.refresh),
                tooltip: 'Segarkan',
              ),
            ],
          ),
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

                        return itemCard(
                          context: context,
                          icon: Icons.person,
                          title: data.fields?.fullName?.stringValue ?? '-',
                          subtitle: data.fields?.email?.stringValue ?? '-',
                          secondarySubtitle:
                              data.fields?.phoneNumber?.stringValue != null
                                  ? phoneNumberFormat(
                                    data.fields?.phoneNumber?.stringValue ?? '',
                                  )
                                  : null,
                          bottomText: 'Hasil Bulan ini: xxx',
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  '${data.fields?.fullName?.stringValue ?? '-'} clicked',
                                ),
                              ),
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

  Future<void> _refreshUserList() async {
    ref.invalidate(userListControllerProvider);
  }
}
