import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vi/auth/auth/provider/auth_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider);
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Name: ${user?.displayName}'),
          const SizedBox(
            height: 20,
          ),
          Text('Email: ${user?.email}'),
          TextButton(
              onPressed: () {
                ref.read(authProvider.notifier).signOut();
              },
              child: const Text('Logout')),
        ],
      )),
    );
  }
}
