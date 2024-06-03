import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vi/app/home/model/notes_model.dart';
import 'package:vi/app/home/screen/components/notes_card.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NotesModel> notes = [
      NotesModel(
          title: 'First Note',
          date: '18 June 2024',
          transcript:
              'This is the first note for your application. Now go and do something better with your life. Conditions will never be perfect'),
      NotesModel(
          title: 'Second Note',
          date: '02 March 2024',
          transcript:
              'This is the first note for your application. Now go and do something better with your life. Conditions will never be perfect'),
      NotesModel(
          title: 'Third Note',
          date: '16 December 2023',
          transcript:
              'This is the first note for your application. Now go and do something better with your life. Conditions will never be perfect'),
    ];
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 243, 243),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 243, 243, 243),
          title: Image.asset(
            'assets/images/letter.png',
            width: 25,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Iconsax.microphone),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NotesCard(note: notes[index]);
            },
          ),
        ));
  }
}
