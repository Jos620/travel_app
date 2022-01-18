import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeadingBoldText extends StatelessWidget {
  HeadingBoldText({
    Key? key,
    this.size = 30,
    this.color = Colors.black,
    required this.text,
  }) : super(key: key);

  double size;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      )
    );
  }
}
