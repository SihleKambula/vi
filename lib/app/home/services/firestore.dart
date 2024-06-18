import 'package:cloud_firestore/cloud_firestore.dart';

// to handle firestore services
class FirestoreService {
  final CollectionReference notes =
      FirebaseFirestore.instance.collection('notes');

  //Read real time data
  Stream<QuerySnapshot> getNotesStream() {
    final notesStream =
        notes.orderBy('createdAt', descending: true).snapshots();
    return notesStream;
  }
  // Update

  //Delete
}
