import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/user_management_module/page/loginPage.dart';
import 'package:windows_app/utils/functions.dart';

class ProfileFragment extends StatefulHookConsumerWidget {
  const ProfileFragment({super.key});

  @override
  ConsumerState<ProfileFragment> createState() => _ProfileFragment();
}

class _ProfileFragment extends ConsumerState<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left panel: Profile summary
          Container(
            width: 300,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                const BoxShadow(
                  color: Colors.black12,
                  blurRadius: 12,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                // const CircleAvatar(
                //   radius: 50,
                //   backgroundImage: AssetImage(''), // Change as needed
                // ),
                // TODO: Display profile picture
                const SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipOval(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Placeholder(
                        color: Colors.blueAccent,
                        strokeWidth: 10,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text('John Doe', style: titleStyle),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.email, size: 20, color: Colors.grey[700]),
                    const SizedBox(width: 10),
                    Expanded(child: Text(userDataHelper.email)),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.security, size: 20, color: Colors.grey[700]),
                    const SizedBox(width: 10),
                    Expanded(child: Text(userDataHelper.role)),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.badge, size: 20, color: Colors.grey[700]),
                    const SizedBox(width: 10),
                    Expanded(child: Text(userDataHelper.id)),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 40),

          // Right panel: Detail view
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Account Details',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 12),

                // Detail Row 1
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[200]!),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 150,
                        child: Text(
                          'Username',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(child: Text(userDataHelper.name)),
                    ],
                  ),
                ),

                // Detail Row 2
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[200]!),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 150,
                        child: Text(
                          'Email Address',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(child: Text(userDataHelper.email)),
                    ],
                  ),
                ),

                // Detail Row 3
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[200]!),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Phone Number',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      // TODO: Display phone number
                      Expanded(child: Text('Later')),
                    ],
                  ),
                ),

                // Detail Row 4
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[200]!),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 150,
                        child: Text(
                          'Role',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(child: Text(userDataHelper.role)),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // TODO: Implement sign-out confirmation before navigating
                        clearUserDataInSp();

                        showFeedbackDialog(
                          context: context,
                          type: 2,
                          message: 'Log Out Success',
                          onClose: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: errorColor,
                        foregroundColor: backgroundColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                      ),
                      child: Text(
                        'Logout',
                        style: buttonStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
