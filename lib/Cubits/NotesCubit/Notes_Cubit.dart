import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notepad_app/Constants.dart';
import 'package:notepad_app/Cubits/NotesCubit/Notes_Satate.dart';
import 'package:notepad_app/Models/NotesModal.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<Notesmodal> notesList = [];

  void GetAllNotes() {
    var box = Hive.box<Notesmodal>(kNotesBox);
    notesList = box.values.toList().reversed.toList();
    emit(NotesSuccess());
  }

  void searchNotes(String query) {
    var box = Hive.box<Notesmodal>(kNotesBox);
    notesList = box.values.toList().reversed.toList();
    notesList = notesList.where((note) {
      return note.title!.toLowerCase().contains(query.toLowerCase()) ||
          note.note!.toLowerCase().contains(query.toLowerCase());
    }).toList();
    emit(NotesSuccess());
  }
}
