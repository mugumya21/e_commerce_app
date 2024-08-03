import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  Color color;
  Widget child;
  MyBox({super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      color: color,
    );
  }
}
