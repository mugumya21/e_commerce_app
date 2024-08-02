// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of the shoes for sale in shop
  List<Shoe> shoeShop = [
    Shoe(
        name: "shoe1",
        imagepath: "assets/images/shoe1.png",
        description: "this is the shoe",
        price: "2000"),
    Shoe(
        name: "shoe2",
        imagepath: "assets/images/shoe2.png",
        description: "this is the shoe",
        price: "6000"),
    Shoe(
        name: "shoe3",
        imagepath: "assets/images/shoe3.png",
        description: "this is the shoe",
        price: "7000"),
    Shoe(
        name: "shoe4",
        imagepath: "assets/images/shoe4.png",
        description: "this is the shoe",
        price: "8000"),
  ];

  // list of shoes in a user cart

  List<Shoe> userCart = [];

  // get the shoes for sale
  getShoeShop() {
    notifyListeners();

    return shoeShop;
  }
  // get the shoes in users cart

  getUserCart() {
    notifyListeners();

    return userCart;
  }

  // add shoe into the cart

  void addshoetocart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove shoe in the cart
  void removeshoefromcart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
