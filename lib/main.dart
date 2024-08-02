// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) =>
            MaterialApp(debugShowCheckedModeBanner: false, home: IntroPage()));
  }
}
