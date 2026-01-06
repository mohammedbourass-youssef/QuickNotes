import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_app/Cubits/DeleteNotesCubit/DeleteNote_State.dart';

class DeleteNoteCubit extends Cubit<DeleteNoteState> {
  DeleteNoteCubit() : super(DeleteNoteInitial());

  void deleteNote(int index) async {
    emit(DeleteNoteLoading());
    try {
      // Simulate a delete operation with a delay
      await Future.delayed(Duration(seconds: 1));
      // Here you would add your actual delete logic, e.g., removing from a database
      emit(DeleteNoteSuccess());
    } catch (e) {
      emit(DeleteNoteFailure(e.toString()));
    }
  }
}
