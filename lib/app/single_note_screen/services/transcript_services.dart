import 'package:cloud_firestore/cloud_firestore.dart';

class TranscriptServices {
  final CollectionReference notes =
      FirebaseFirestore.instance.collection('notes');

  //get single note
  Future<DocumentSnapshot> getNote(String id) async {
    DocumentSnapshot note = await notes.doc(id).get();
    return note;
  }
}
