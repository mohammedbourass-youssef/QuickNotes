import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  const Customtextfeild({super.key, this.maxLines = 1, this.hintText , this.onSaved});
  final int maxLines;
  final String? hintText;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "This field is required";
        }
        return null;
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        hintText: hintText,
      ),
    );
  }
}
