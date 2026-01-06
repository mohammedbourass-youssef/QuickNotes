

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_app/Cubits/UpdateNotesCubit/UpdateNote_State.dart';

class UpdatenoteCubit extends Cubit<UpdateNoteState> {

  UpdatenoteCubit() : super(UpdateNoteInitial());

  void updateNote(int index, String title, String content) async {
    emit(UpdateNoteLoading());
    try {
      // Simulate an update operation with a delay
      await Future.delayed(Duration(seconds: 1));
      // Here you would add your actual update logic, e.g., updating in a database
      emit(UpdateNoteSuccess());
    } catch (e) {
      emit(UpdateNoteFailure(e.toString()));
    }
  }

}