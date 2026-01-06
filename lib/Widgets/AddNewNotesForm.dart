import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_app/Cubits/AddNotesCubit/AddNote_Cubit.dart';
import 'package:notepad_app/Models/NotesModal.dart';
import 'package:notepad_app/Widgets/CustomButton.dart';
import 'package:notepad_app/Widgets/CustomTextFeild.dart';

class AddNewNotesForm extends StatefulWidget {
  const AddNewNotesForm({super.key});

  @override
  State<AddNewNotesForm> createState() => _AddNewNotesFormState();
}

class _AddNewNotesFormState extends State<AddNewNotesForm> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String title = "";
  String content = "";
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 30),
          Customtextfeild(
            hintText: "Title",
            onSaved: (value) {
              title = value!;
            },
          ),
          SizedBox(height: 20),
          Customtextfeild(
            maxLines: 5,
            hintText: "Content",
            onSaved: (value) {
              content = value!;
            },
          ),
          SizedBox(height: 50),
          Custombutton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var note = Notesmodal(
                  title: title!,
                  note: content!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
