import 'package:flutter/material.dart';
import 'package:notepad_app/views/CustomIconButton.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'My Notes',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          CustomIconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 28),
          ),
        ],
      ),
    );
  }
}
