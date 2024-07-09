import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// to handle firestore services
class FirestoreService {
  final CollectionReference notes =
      FirebaseFirestore.instance.collection('notes');

  //Read real time data
  Stream<QuerySnapshot> getNotesStream(User? user) {
    final notesStream = notes
        .where('userID', isEqualTo: user!.uid)
        .orderBy('createdAt', descending: true)
        .snapshots();
    return notesStream;
  }
  // Update

  //Delete
}
