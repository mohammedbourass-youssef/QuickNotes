import 'package:flutter/material.dart';
import 'package:notepad_app/views/HomePage.dart';

void main() {
  runApp(const notesApp());
}

class notesApp extends StatelessWidget {
  const notesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const Homepage(),
    );
  }
}
