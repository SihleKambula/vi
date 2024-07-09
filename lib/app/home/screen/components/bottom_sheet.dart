import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:vi/app/home/provider/notes_provider.dart';
import 'package:vi/app/home/services/note_services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vi/auth/auth/provider/auth_provider.dart';

class RecordingSheet extends ConsumerWidget {
  const RecordingSheet({super.key, required this.recorderController});
  final RecorderController recorderController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider);
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                blurRadius: 2, blurStyle: BlurStyle.outer, color: Colors.grey)
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
                        onPressed: () async {
                          final path = await NoteServices()
                              .recordEventStop(recorderController);
                          Navigator.pop(context);
                          Map<String, dynamic> state = await ref
                              .read(notesNotifierProvider.notifier)
                              .sendRecordToAI(path, user);
                          recorderController.refresh();

                          // Show toast message upon completion
                          Fluttertoast.showToast(
                            msg: state['message'],
                            backgroundColor: Colors.grey,
                            fontSize: 16.0,
                          );
                        },
                        icon: const Icon(Icons.mic_off))
                  ]),
            ),
          )),
    );
  }
}
