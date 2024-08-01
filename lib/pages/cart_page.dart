// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) {
        return Container(
          child: Center(
            child: Text(value.ff[0]),
          ),
        );
      },
    );
  }
}
