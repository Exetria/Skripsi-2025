import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePage extends StatefulHookConsumerWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("ProfilePage"));
  }
}
