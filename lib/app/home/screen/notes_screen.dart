import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vi/app/home/model/notes_model.dart';
import 'package:vi/app/home/screen/components/notes_card.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:vi/app/home/services/firestore.dart';
import 'package:vi/app/home/services/note_services.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RecorderController recorderController = RecorderController();
    final FirestoreService firestoreService = FirestoreService();
    Widget bottomSheet() => Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    blurStyle: BlurStyle.outer,
                    color: Colors.grey)
              ]),
          child: SizedBox(
              height: 300,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AudioWaveforms(
                          size: Size(MediaQuery.of(context).size.width, 200.0),
                          recorderController: recorderController,
                          enableGesture: true,
                          waveStyle: const WaveStyle(
                            waveColor: Colors.blue,
                            spacing: 8.0,
                            extendWaveform: true,
                            showMiddleLine: false,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              NoteServices()
                                  .recordEventStop(recorderController);
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.mic_off))
                      ]),
                ),
              )),
        );
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
          onPressed: () {
            showBottomSheet(
                context: context, builder: (context) => bottomSheet());
            NoteServices().recordEvent(recorderController);
          },
          child: const Icon(Iconsax.microphone),
        ),
        body: Padding(
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
        ));
  }
}
