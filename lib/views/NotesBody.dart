import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notepad_app/Cubits/NotesCubit/Notes_Cubit.dart';
import 'package:notepad_app/Widgets/CustomTextFeild.dart';

import 'package:notepad_app/views/CustomAppBar.dart';
import 'package:notepad_app/views/NotesList.dart';

class Notesbody extends StatefulWidget {
  const Notesbody({super.key});

  @override
  State<Notesbody> createState() => _NotesbodyState();
}

class _NotesbodyState extends State<Notesbody> {
  bool IsLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Customappbar(
              icon: IsLoading ? Icons.close : Icons.search,
              title: 'Notes',
              onPressed: () {
                IsLoading = !IsLoading;
                setState(() {});
              },
            ),
            IsLoading
                ? TextField(
                    onChanged: (value) {
                      BlocProvider.of<NotesCubit>(context).searchNotes(value);
                    },
                    autofocus: true,
                    decoration: InputDecoration(hintText: 'Search'),
                  )
                : Container(),
            Noteslist(),
          ],
        ),
      ),
    );
  }
}
