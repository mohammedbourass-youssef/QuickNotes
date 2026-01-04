import 'package:flutter/material.dart';
import 'package:notepad_app/views/CustomAppBar.dart';
import 'package:notepad_app/views/NoteItem.dart';

class Notesbody extends StatelessWidget {
  const Notesbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Customappbar(),
            SizedBox(height: 20.0),
            Noteitem(
              title: 'Sample Note',
              content:
                  'lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              date: '2024-06-01',
              primaryColor: Colors.blue,
              fontColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
