// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/pages/intro_page.dart';
import 'package:e_commerce_app/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Cart>(create: (_) => Cart()),
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
            // theme: Provider.of<ThemeProvider>(context).themedata,
            debugShowCheckedModeBanner: false,
            home: IntroPage());
      }),
    );
  }
}
