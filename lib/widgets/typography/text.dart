import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppText extends StatelessWidget {
  AppText({
    Key? key,
    this.size = 16,
    this.color = Colors.black54,
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
      )
    );
  }
}
