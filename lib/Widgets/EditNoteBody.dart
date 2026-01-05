import 'package:flutter/material.dart';
import 'package:notepad_app/Widgets/CustomTextFeild.dart';
import 'package:notepad_app/views/CustomAppBar.dart';

class Editnotebody extends StatelessWidget {
  const Editnotebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(height: 5),
          Customappbar(
            icon: Icons.check,
            title: 'Edit Note',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Customtextfeild(hintText: 'Title', maxLines: 1),
              SizedBox(height: 10),
              Customtextfeild(hintText: 'Note', maxLines: 10),
            ],
          ),
        ],
      ),
    );
  }
}
