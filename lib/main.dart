import 'package:flutter/material.dart';
import 'package:vi/auth/auth/screen/auth_screen.dart';

void main() {
  runApp(const Vi());
}

class Vi extends StatelessWidget {
  const Vi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthScreen();
  }
}
