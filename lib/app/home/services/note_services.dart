import 'package:audio_waveforms/audio_waveforms.dart';

class NoteServices {
  //Start recording
  void recordEvent(RecorderController controller) async {
    final hasPermission = await controller.checkPermission();
    if (hasPermission) {
      controller.androidOutputFormat = AndroidOutputFormat.mpeg4;
      await controller.record();
    } else {
      // request for permission again
    }
  }

  // Stop recording
  recordEventStop(RecorderController controller) async {
    final path = await controller.stop();
    return path;
  }
}
