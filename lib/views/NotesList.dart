import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_app/Cubits/NotesCubit/Notes_Cubit.dart';
import 'package:notepad_app/Cubits/NotesCubit/Notes_Satate.dart';
import 'package:notepad_app/Models/NotesModal.dart';
import 'package:notepad_app/views/NoteItem.dart';

class Noteslist extends StatelessWidget {
  const Noteslist({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<NotesCubit>(context).GetAllNotes();
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<Notesmodal> notes =
            BlocProvider.of<NotesCubit>(context).notesList ?? [];
        if (notes.isEmpty) {
          return Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: const Center(child: Text("No Notes")),
          );
        }
        return Expanded(
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Noteitem(note: notes[index]);
            },
          ),
        );
      },
    );
  }
}
