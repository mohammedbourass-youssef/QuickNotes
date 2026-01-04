import 'package:flutter/material.dart';
import 'package:notepad_app/views/NotesBody.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: const Notesbody()
    );
  }
}