import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  const Customtextfeild({super.key, this.maxLines = 1, this.hintText});
  final int maxLines;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        hintText: hintText,
      ),
    );
  }
}
