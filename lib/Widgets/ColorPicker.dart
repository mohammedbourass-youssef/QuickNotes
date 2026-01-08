import 'package:flutter/material.dart';
import 'package:notepad_app/Constants.dart';
import 'package:notepad_app/Widgets/ColoredCercle.dart';

class Colorpicker extends StatefulWidget {
  const Colorpicker({super.key , required this.onValueChanged});
  final IntEventCallback onValueChanged;
  @override
  State<Colorpicker> createState() => _ColorpickerState();
}

class _ColorpickerState extends State<Colorpicker> {
  int clicked = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Coloredcercle(
            color: Colors.red,
            borderColor: clicked == 0 ? Colors.white : Colors.transparent,
            onTap: () {
              widget.onValueChanged(Colors.red.value);
              setState(() {
                clicked = 0;
              });
            },
          ),
          Coloredcercle(
            color: Colors.green,
            borderColor: clicked == 1 ? Colors.white : Colors.transparent,
            onTap: () {
              widget.onValueChanged(Colors.green.value);
              setState(() {
                clicked = 1;
              });
            },
          ),
          Coloredcercle(
            color: Colors.yellow,
            borderColor: clicked == 2 ? Colors.white : Colors.transparent,
            onTap: () {
              widget.onValueChanged(Colors.yellow.value);
              setState(() {
                clicked = 2;
              });
            },
          ),
          Coloredcercle(
            color: Colors.blue,
            borderColor: clicked == 3 ? Colors.white : Colors.transparent,
            onTap: () {
              widget.onValueChanged(Colors.blue.value);
              setState(() {
                clicked = 3;
              });
            },
          ),
          Coloredcercle(
            color: Colors.purple,
            borderColor: clicked == 4 ? Colors.white : Colors.transparent,
            onTap: () {
              widget.onValueChanged(Colors.purple.value);
              setState(() {
                clicked = 4;
              });
            },
          ),
          Coloredcercle(
            color: Colors.orange,
            borderColor: clicked == 5 ? Colors.white : Colors.transparent,
            onTap: () {
              widget.onValueChanged(Colors.orange.value);
              setState(() {
                clicked = 5;
              });
            },
          ),
          Coloredcercle(
            color: Colors.pink,
            borderColor: clicked == 6 ? Colors.white : Colors.transparent,
            onTap: () {
              widget.onValueChanged(Colors.pink.value);
              setState(() {
                clicked = 6;
              });
            },
          ),
          Coloredcercle(
            color: Colors.teal,
            borderColor: clicked == 7 ? Colors.white : Colors.transparent,
            onTap: () {
              widget.onValueChanged(Colors.teal.value);
              setState(() {
                clicked = 7;
              });
            },
          ),
          Coloredcercle(
            color: Colors.amber,
            borderColor: clicked == 8 ? Colors.white : Colors.transparent,
            onTap: () {
              widget.onValueChanged(Colors.amber.value);
              setState(() {
                clicked = 8;
              });
            },
          ),
        ],
      ),
    );
  }
}
