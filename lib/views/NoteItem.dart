import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_app/Cubits/NotesCubit/Notes_Cubit.dart';
import 'package:notepad_app/Cubits/ThemeCubit/Theme_Cubit.dart';
import 'package:notepad_app/Cubits/ThemeCubit/Theme_State.dart';
import 'package:notepad_app/Models/NotesModal.dart';
import 'package:notepad_app/views/EditNoteView.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key, required this.note});

  final Notesmodal note;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Editnoteview(note: note)),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.only(bottom: 8.0),
            decoration: BoxDecoration(
              color: Color(note.color!),
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Color(note.color!).withValues(alpha: 0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    note.title!,
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: state is ThemeDark ? Colors.black : Colors.white,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).GetAllNotes();
                    },
                    icon: Icon(
                      Icons.delete,
                      color: state is ThemeDark ? Colors.black : Colors.white,
                      size: 32,
                    ),
                  ),
                ),
                ListTile(
                  subtitle: Text(
                    note.note!,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: state is ThemeDark
                          ? Colors.black.withValues(alpha: .9)
                          : Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  trailing: Text(
                    note.date!,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: state is ThemeDark
                          ? Colors.black.withValues(alpha: .9)
                          : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
