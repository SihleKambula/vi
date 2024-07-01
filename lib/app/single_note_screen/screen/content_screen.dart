import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key, required this.noteID});
  final String noteID;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Content'),
    );
  }
}
