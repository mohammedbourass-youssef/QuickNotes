import 'package:flutter/material.dart';
import 'package:notepad_app/Widgets/CustomButton.dart';
import 'package:notepad_app/Widgets/CustomTextFeild.dart';

class Addnotewidget extends StatelessWidget {
  const Addnotewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 420,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Customtextfeild(hintText: "Title"),
            SizedBox(height: 20),
            Customtextfeild(maxLines: 5, hintText: "Content"),
            SizedBox(height: 50),
            Custombutton(
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
