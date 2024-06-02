import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vi/auth/auth/provider/auth_provider.dart';
import 'package:vi/auth/auth/screen/components/auth_button.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authData = ref.watch(authProvider);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/letter.png',
                width: 120,
              ),
              Text(
                'Vi will help you turn your thoughts into content ideas.',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    textStyle:
                        const TextStyle(fontSize: 16, color: Colors.grey)),
              ),
              const SizedBox(
                height: 60,
              ),
              AuthButton(
                buttonName: 'Continue with Apple',
                iconWidget: const Icon(
                  Icons.apple,
                  size: 30,
                ),
                function: () {
                  print('Apple sign in');
                },
              ),
              const SizedBox(
                height: 20,
              ),
              AuthButton(
                buttonName: 'Continue with  Google',
                iconWidget: Image.asset(
                  'assets/images/icons/google.png',
                  height: 25,
                ),
                function: ref.read(authProvider.notifier).signInWithGoogle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
