import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GNav(
        tabBorderRadius: 16,
        tabBackgroundColor: Colors.grey.shade200,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.blue,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
            onPressed: () {},
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "cart",
            onPressed: () {},
          )
        ]);
  }
}
