import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vi/app/single_note_screen/screen/content_screen.dart';
import 'package:vi/app/single_note_screen/screen/transcript_screen.dart';

class SingleNoteScreen extends StatelessWidget {
  const SingleNoteScreen({super.key, required this.notesID});
  final String notesID;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const TabBar(
          padding: EdgeInsets.only(top: 40),
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          tabs: [
            Tab(
              icon: Icon(Iconsax.document),
            ),
            Tab(
              icon: Icon(Iconsax.square),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Transcript(noteID: notesID),
            ContentScreen(
              noteID: notesID,
            ),
          ],
        ),
      ),
    );
  }
}
