// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/components/my_bottom_navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu));
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: DrawerHeader(
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Image.asset(
                  'images/logoshoe.png',
                  color: Colors.white,
                ))),
      ),
      body: Container(),
      // start from here, use index to access the home and the cart btn and pages
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
