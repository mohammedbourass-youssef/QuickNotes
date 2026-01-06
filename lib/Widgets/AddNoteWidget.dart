import 'package:flutter/material.dart';
import 'package:notepad_app/Widgets/CustomButton.dart';
import 'package:notepad_app/Widgets/CustomTextFeild.dart';

class Addnotewidget extends StatelessWidget {
  const Addnotewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 420,
      child: const SingleChildScrollView(child: AddNewNotesForm()),
    );
  }
}

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
                print("title $title");
                print("content $content");
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
