// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/components/shoe_tile.dart';
import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addshoetocart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addshoetocart(shoe);

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Success'),
            content: Text('Successfly added the Shoe to Cart'),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) {
      return Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // search

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Center(child: Text('Search')),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.search))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // text title
              Text(
                'Everybody can fly.. but some people fly more..',
                style: TextStyle(
                    color: Colors.grey[800], fontWeight: FontWeight.bold),
              ),

              // hot picks
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot Picks',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Text(
                    'see all',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),

              // the shoeTile
              Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        Shoe shoe = value.getShoeShop()[index];
                        return ShoeTile(
                          shoe: shoe,
                          onPressed: () => addshoetocart(shoe),
                        );
                      }))
            ],
          ),
        ),
      );
    });
  }
}
