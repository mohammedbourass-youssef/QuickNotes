import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notepad_app/Constants.dart';
import 'package:notepad_app/Cubits/AddNotesCubit/AddNote_State.dart';
import 'package:notepad_app/Models/NotesModal.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote(Notesmodal note) async {
    emit(AddNoteLoading());
    try {
      var box = Hive.box<Notesmodal>(kNotesBox);
      await box.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
