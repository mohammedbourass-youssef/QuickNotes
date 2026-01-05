import 'package:flutter/material.dart';
import 'package:notepad_app/views/CustomAppBar.dart';
import 'package:notepad_app/views/NoteItem.dart';
import 'package:notepad_app/views/NotesList.dart';

class Notesbody extends StatelessWidget {
  const Notesbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Customappbar(), Noteslist()],
        ),
      ),
    );
  }
}
