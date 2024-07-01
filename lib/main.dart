import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vi/app/app.dart';
import 'package:vi/app/single_note_screen/screen/single_note_screen.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

//screens
import 'package:vi/auth/auth/screen/auth_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: Vi()));
}

class Vi extends StatelessWidget {
  const Vi({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(routes: [
      GoRoute(path: '/', builder: (context, state) => const App()),
      GoRoute(
          path: '/singleNote/:notesID',
          builder: (context, state) =>
              SingleNoteScreen(notesID: state.pathParameters['notesID']!)),
    ]);
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.nunitoTextTheme(),
        scaffoldBackgroundColor: const Color.fromARGB(255, 243, 243, 243),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      title: 'Vi',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const MainApp();
        } else {
          return const AuthScreen();
        }
      },
    ));
  }
}
