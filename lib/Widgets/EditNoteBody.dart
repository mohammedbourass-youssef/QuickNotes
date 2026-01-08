import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_app/Cubits/NotesCubit/Notes_Cubit.dart';
import 'package:notepad_app/Models/NotesModal.dart';
import 'package:notepad_app/Widgets/CustomTextFeild.dart';
import 'package:notepad_app/views/CustomAppBar.dart';

class Editnotebody extends StatefulWidget {
  const Editnotebody({super.key, required this.notesmodal});
  final Notesmodal notesmodal;

  @override
  State<Editnotebody> createState() => _EditnotebodyState();
}

class _EditnotebodyState extends State<Editnotebody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: 5),
            Customappbar(
              icon: Icons.check,
              title: 'Edit Note',
              onPressed: () {
                _formKey.currentState!.save();
                if (widget.notesmodal.title!.isNotEmpty &&
                    widget.notesmodal.note!.isNotEmpty) {
                  print(widget.notesmodal.note);
                  print(widget.notesmodal.title);
                  widget.notesmodal.save();
                  BlocProvider.of<NotesCubit>(context).GetAllNotes();
                }
                print(widget.notesmodal.note);
                print(widget.notesmodal.title);
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Customtextfeild(
                  onSaved: (value) {
                    widget.notesmodal.title = value;
                  },
                  hintText: 'Title',
                  maxLines: 1,
                  initialValue: widget.notesmodal.title,
                ),
                SizedBox(height: 10),
                Customtextfeild(
                  onSaved: (value) {
                    widget.notesmodal.note = value;
                  },
                  hintText: 'Note',
                  maxLines: 10,
                  initialValue: widget.notesmodal.note,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
