// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_app/components/my_bottom_navbar.dart';
import 'package:e_commerce_app/components/my_box.dart';
import 'package:e_commerce_app/components/my_button.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/shop_page.dart';
import 'package:e_commerce_app/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // selected index
  int selectedIdex = 0;

  // list of pages
  final List _pages = [ShopPage(), CartPage()];

// void function to loop thru
  void navigatepages(int index) {
    setState(() {
      selectedIdex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // MyBox(
          //     color: Colors.black,
          //     child: MyButton(
          //       color: Colors.yellow,
          //       onTap: () {
          //         Provider.of<ThemeProvider>(context, listen: false)
          //             .toggletheme();
          //       },
          //     ))
        ],
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu));
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  DrawerHeader(
                      child: Image.asset(
                    'images/logoshoe.png',
                    color: Colors.white,
                  )),

                  // drawer divider
                  Divider(
                    height: 20,
                    color: Colors.grey[800],
                  ),

                  //tap
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    onTap: () {},
                    title: Text("Home "),
                    textColor: Colors.white,
                  ),

                  //tap
                  ListTile(
                    leading: Icon(
                      Icons.contacts,
                      color: Colors.white,
                    ),
                    onTap: () {},
                    title: Text("About"),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),

            //tap
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  color: Colors.white,
                ),
                onTap: () {},
                title: Text("Logout"),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: _pages[selectedIdex],
      // start from here, use index to access the home and the cart btn and pages
      bottomNavigationBar:
          MyBottomNavBar(onTabChange: (index) => navigatepages(index)),
    );
  }
}
