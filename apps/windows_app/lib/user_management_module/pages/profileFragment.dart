import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileFragment extends StatefulHookConsumerWidget {
  const ProfileFragment({super.key});

  @override
  ConsumerState<ProfileFragment> createState() => _ProfileFragment();
}

class _ProfileFragment extends ConsumerState<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
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
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/profile.jpg',
                  ), // Change as needed
                ),
                const SizedBox(height: 16),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
                Text('@johndoe', style: TextStyle(color: Colors.grey[600])),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.email, size: 20, color: Colors.grey[700]),
                    const SizedBox(width: 10),
                    const Expanded(child: Text('john.doe@example.com')),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.security, size: 20, color: Colors.grey[700]),
                    const SizedBox(width: 10),
                    const Expanded(child: Text('Role: Sales')),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.badge, size: 20, color: Colors.grey[700]),
                    const SizedBox(width: 10),
                    const Expanded(child: Text('Account ID: 11245')),
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
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Full Name',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(child: Text('Johnathan Doe')),
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
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Username',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(child: Text('johndoe')),
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
                          'Email Address',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(child: Text('john.doe@example.com')),
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
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Phone Number',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(child: Text('+1 (234) 567-8901')),
                    ],
                  ),
                ),

                // Detail Row 5
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
                          'Status',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(child: Text('Active')),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // TODO: Implement sign-out confirmation before navigating
                        // TODO: Add logout function

                        // TODO: Redirect to login page
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const LoginPage(),
                        //   ),
                        // );
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
