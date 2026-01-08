import 'package:flutter/material.dart';
import 'package:notepad_app/views/CustomIconButton.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.home = false,
  });
  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool home;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          CustomIconButton(
            home: home,
            onPressed: onPressed,
            icon: Icon(icon, size: 28),
          ),
        ],
      ),
    );
  }
}
