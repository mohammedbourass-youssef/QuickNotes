import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_app/Cubits/AddNotesCubit/AddNote_Cubit.dart';
import 'package:notepad_app/Cubits/AddNotesCubit/AddNote_State.dart';
import 'package:notepad_app/Cubits/NotesCubit/Notes_Cubit.dart';
import 'package:notepad_app/Widgets/AddNewNotesForm.dart';

class Addnotewidget extends StatelessWidget {
  const Addnotewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).GetAllNotes();
            Navigator.of(context).pop();
          } else if (state is AddNoteFailure) {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error: ${state.errorMessage}')),
            );
            print('Error: ${state.errorMessage}');
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                height: 420,
                child: const SingleChildScrollView(child: AddNewNotesForm()),
              ),
            ),
          );
        },
      ),
    );
  }
}
