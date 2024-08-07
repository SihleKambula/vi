import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'notes_provider.g.dart';

@riverpod
class NotesNotifier extends _$NotesNotifier {
  @override
  Map<String, dynamic> build() {
    return {'loading': false, 'message': ''};
  }

  // Send recording to AI
  Future<Map<String, dynamic>> sendRecordToAI(
      String filePath, User? user) async {
    try {
      // start loading
      state = {'loading': true, 'message': ''};
      var request = http.MultipartRequest(
          'POST', Uri.parse('https://f651-102-223-58-132.ngrok-free.app/vi'));

      //add user ID
      request.fields['uid'] = user!.uid;
      // add file
      request.files.add(await http.MultipartFile.fromPath('event', filePath));

      // add headers
      request.headers.addAll({"Content-type": "multipart/form-data"});

      // send
      var res = await request.send();

      if (res.statusCode == 200) {
        state = {'loading': false, 'message': 'Created'};
        return state;
      }
      state = {'loading': false, 'message': 'Not created'};
      return state;
    } catch (e) {
      state = {'loading': false, 'message': 'Something went wrong'};
      return state;
    }
  }
}
