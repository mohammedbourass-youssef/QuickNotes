import 'package:flutter/material.dart';
import 'package:notepad_app/Widgets/AddNoteWidget.dart';
import 'package:notepad_app/views/NotesBody.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return Addnotewidget();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: const Notesbody(),
    );
  }
}
