import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  Color color;
  Function onTap;
  MyButton({super.key, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: color,
    );
  }
}
