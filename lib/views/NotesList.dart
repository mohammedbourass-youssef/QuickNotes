import 'package:flutter/material.dart';
import 'package:notepad_app/views/NoteItem.dart';

class Noteslist extends StatelessWidget {
  const Noteslist({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Noteitem(
            title: 'Note $index',
            content:
                'Content of note $index lorem ipsum dolor sit amet. lorem ipsum dolor sit amet.lorem ipsum dolor sit amet.',
            date: '2024-06-01',
            primaryColor: Colors.red,
            fontColor: Colors.black,
          );
        },
      ),
    );
  }
}
