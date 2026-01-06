import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notepad_app/Constants.dart';
import 'package:notepad_app/Models/NotesModal.dart';
import 'package:notepad_app/views/HomePage.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NotesmodalAdapter());
  runApp(const notesApp());
}

class notesApp extends StatelessWidget {
  const notesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const Homepage(),
    );
  }
}
