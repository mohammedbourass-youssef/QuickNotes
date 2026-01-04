import 'package:flutter/material.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({
    super.key,
    required this.title,
    required this.content,
    required this.date,
    required this.primaryColor,
    required this.fontColor,
    this.onDeletePressed,
    this.onPressed,
  });
  final String title;
  final String content;
  final String date;
  final VoidCallback? onDeletePressed;
  final VoidCallback? onPressed;
  final Color primaryColor;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              title,
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: fontColor,
              ),
            ),
            trailing: IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.delete, color: fontColor, size: 32),
            ),
          ),
          ListTile(
            subtitle: Text(
              content,
              style: TextStyle(
                fontSize: 16.0,
                color: fontColor.withValues(alpha: .9),
              ),
            ),
          ),
          ListTile(
            trailing: Text(
              date,
              style: TextStyle(
                fontSize: 14.0,
                color: fontColor.withValues(alpha: .8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
