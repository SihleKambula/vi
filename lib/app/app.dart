import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

// UI screens
import 'package:vi/app/home/screen/notes_screen.dart';
import 'package:vi/app/profile/screen/profile_screen.dart';
import 'package:vi/app/reminders/screen/reminder_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int selectedScreen = 0;

  List<Widget> screens = [
    const NotesScreen(),
    const ReminderScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedScreen],
      bottomNavigationBar: NavigationBar(
        elevation: 0,
        height: 60,
        selectedIndex: selectedScreen,
        indicatorColor: const Color.fromARGB(73, 0, 140, 255),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        onDestinationSelected: (value) {
          setState(() {
            selectedScreen = value;
          });
        },
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Iconsax.note,
              ),
              label: 'notes'),
          NavigationDestination(icon: Icon(Iconsax.task), label: 'reminders'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'profile')
        ],
      ),
    );
  }
}
