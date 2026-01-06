import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_app/Cubits/AddNotesCubit/AddNote_State.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  
}