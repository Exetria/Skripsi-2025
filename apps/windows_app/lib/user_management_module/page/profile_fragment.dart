import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/user_management_module/page/login_page.dart';
import 'package:windows_app/utils/theme_controller.dart';

class ProfileFragment extends StatefulHookConsumerWidget {
  const ProfileFragment({super.key});

  @override
  ConsumerState<ProfileFragment> createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends ConsumerState<ProfileFragment> {
  bool logOutButtonEnable = true;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final user = userDataHelper;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // ── Left: Profile Card ───────────────────────────
          Expanded(
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.secondary.withAlpha(30),
                      backgroundImage:
                          userDataHelper?.photoUrl.isNotEmpty == true
                              ? NetworkImage(userDataHelper?.photoUrl ?? '')
                              : null,
                      child:
                          userDataHelper?.photoUrl.isEmpty == true
                              ? Icon(
                                Icons.person,
                                size: 60,
                                color: Theme.of(context).colorScheme.primary,
                              )
                              : null,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      user?.fullName ?? 'Nama Tidak Tersedia',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      user?.email ?? 'Email Tidak Tersedia',
                      style: bodyStyle,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      user?.phone ?? 'Nomor Tidak Tersedia',
                      style: bodyStyle,
                    ),
                    const SizedBox(height: 8),
                    Text('Role: ${user?.role ?? '-'}', style: bodyStyle),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(width: 16),

          // ── Right: Settings & Actions ────────────────────
          Expanded(
            child: Column(
              children: [
                // Settings card (upper half)
                Expanded(
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Settings', style: sectionTitleStyle),
                          const Divider(),
                          SwitchListTile(
                            contentPadding: EdgeInsets.zero,
                            title: const Text('Mode Gelap'),
                            value:
                                ref.watch(themeModeProvider) == ThemeMode.dark,
                            onChanged: (val) async {
                              await saveDataToSp(
                                key: 'themeMode',
                                data: val ? '1' : '0',
                              );
                              ref.read(themeModeProvider.notifier).state =
                                  val ? ThemeMode.dark : ThemeMode.light;
                            },
                          ),
                          // TODO: add more setting toggles here
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Other actions card (lower half)
                Expanded(
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Other Actions', style: sectionTitleStyle),
                          const Divider(),
                          ElevatedButton.icon(
                            icon: const Icon(Icons.exit_to_app),
                            label: Text('Log Out', style: buttonStyle),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: cs.error,
                              foregroundColor: cs.onError,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                            onPressed: logOutButtonEnable ? doSignOut : null,
                          ),
                          const SizedBox(height: 12),
                          // TODO: add more action buttons here
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void doSignOut() {
    showConfirmationDialog(
      context: context,
      message: 'Apakah Anda yakin ingin log out?',
      rightButtonBackgroundColor: Theme.of(context).colorScheme.tertiary,
      leftButtonBackgroundColor: Theme.of(context).colorScheme.error,
      onRightButtonTap: () async {
        // Delay to close popup
        await Future.delayed(const Duration(milliseconds: 250));

        // Deactivate button
        setState(() {
          logOutButtonEnable = false;
        });

        // Clear user data
        clearUserDataInSp();

        // Show feedback
        showFeedbackDialog(
          context: context,
          type: 2,
          message: 'Log Out Sukses',
          onClose: () {
            setState(() {
              logOutButtonEnable = true;
            });
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        );
      },
      onLeftButtonTap: () {},
    );
  }
}
