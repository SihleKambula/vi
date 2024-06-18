import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({super.key, required this.note});
  final DocumentSnapshot note;

  @override
  Widget build(BuildContext context) {
    //document ID
    // String docID = note.id;

    //document data
    Map<String, dynamic> data = note.data() as Map<String, dynamic>;

    //card variables
    String title = data['transcript'].substring(0, 15);
    String transcript = data['transcript'];

    //Getting the date
    Timestamp timestamp = data['createdAt'];
    DateTime dateTime = timestamp.toDate();
    String date = DateFormat.yMMMd().format(dateTime).toString();

    return Card(
      borderOnForeground: true,
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white70, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Iconsax.note_text)),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$title...',
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                        date,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              transcript,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
