import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference notes =
      FirebaseFirestore.instance.collection('notes');

  //Read
  Stream<QuerySnapshot> getNotesStream() {
    final notesStream =
        notes.orderBy('createdAt', descending: true).snapshots();
    return notesStream;
  }
  // Update

  //Delete
}
