import 'package:flutter/widgets.dart';

class Coloredcercle extends StatelessWidget {
  const Coloredcercle({
    super.key,
    required this.color,
    required this.borderColor,
    required this.onTap,
  });
  final VoidCallback? onTap;
  final Color? color;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(color: borderColor, shape: BoxShape.circle),
        child: Center(
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
        ),
      ),
    );
  }
}
