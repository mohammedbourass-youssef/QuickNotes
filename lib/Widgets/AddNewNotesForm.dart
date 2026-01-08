import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_app/Cubits/AddNotesCubit/AddNote_Cubit.dart';
import 'package:notepad_app/Cubits/AddNotesCubit/AddNote_State.dart';
import 'package:notepad_app/Models/NotesModal.dart';
import 'package:notepad_app/Widgets/ColorPicker.dart';
import 'package:notepad_app/Widgets/CustomButton.dart';
import 'package:notepad_app/Widgets/CustomTextFeild.dart';
import 'package:intl/intl.dart';

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
  int color = Colors.red.value;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Colorpicker(
            onValueChanged: (value) {
              color = value;
            },
          ),
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
          SizedBox(height: 30),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return Custombutton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var formated = DateFormat.YEAR_ABBR_MONTH_DAY;
                    var note = Notesmodal(
                      title: title,
                      note: content,
                      date: DateFormat(formated).format(DateTime.now()),
                      color: color,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
