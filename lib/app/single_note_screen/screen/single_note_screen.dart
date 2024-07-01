import 'package:flutter/material.dart';

class SingleNoteScreen extends StatelessWidget {
  const SingleNoteScreen({super.key, required this.notesID});
  final String notesID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(notesID),
      ),
    );
  }
}
