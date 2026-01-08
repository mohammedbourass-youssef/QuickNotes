import 'package:flutter/material.dart';
import 'package:notepad_app/Models/NotesModal.dart';
import 'package:notepad_app/Widgets/EditNoteBody.dart';

class Editnoteview extends StatelessWidget {
  const Editnoteview({super.key, required this.note});
  final Notesmodal note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Editnotebody(notesmodal: note),
      
    );
  }
}
