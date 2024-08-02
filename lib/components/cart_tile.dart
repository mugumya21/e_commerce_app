import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class CartTile extends StatefulWidget {
  Shoe shoe;
  CartTile({super.key, required this.shoe});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3), color: Colors.grey[400]),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagepath),
        title: Text(widget.shoe.name),
      ),
    );
  }
}
