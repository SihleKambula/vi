import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vi/app/home/provider/notes_provider.dart';
import 'package:vi/app/home/screen/components/bottom_sheet.dart';
import 'package:vi/app/home/screen/components/notes_card.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:vi/app/home/services/firestore.dart';
import 'package:vi/app/home/services/note_services.dart';

class NotesScreen extends ConsumerWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    RecorderController recorderController = RecorderController();
    final FirestoreService firestoreService = FirestoreService();

    //riverpod
    final notesProvider = ref.watch(notesNotifierProvider);

    // Bottomsheet for recording voice notes
    Widget bottomSheet() =>
        RecordingSheet(recorderController: recorderController);

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
          //initiate recording
          onPressed: () {
            showBottomSheet(
                context: context, builder: (context) => bottomSheet());
            NoteServices().recordEvent(recorderController);
          },
          child: const Icon(Iconsax.microphone),
        ),
        body: Column(
          children: [
            //show loading
            if (notesProvider['loading'])
              const LinearProgressIndicator(
                backgroundColor: Colors.blue,
                valueColor: AlwaysStoppedAnimation<Color>(
                    Color.fromARGB(255, 18, 32, 223)),
              ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: StreamBuilder<QuerySnapshot>(
                  stream: firestoreService.getNotesStream(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List notes = snapshot.data!.docs;
                      return ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: notes.length,
                        itemBuilder: (context, index) {
                          return NotesCard(note: notes[index]);
                        },
                      );
                    }
                    return const Center(
                      child: Text('No notes available'),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
