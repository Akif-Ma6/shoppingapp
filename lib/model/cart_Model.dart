import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopnow/components/shopping_Items.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["iPhone 14 Pro Max", "149900", "images/iphone14promax.png", Colors.indigo],
    ["iPhone 13 ", "66900", "images/iphone13.png", Colors.yellow],
    ["iPhone 12 Mini", "64900", "images/iphone12mini.png", Colors.blueAccent],
    ["iPhone 11", "43900", "images/iphone11.png", Colors.red],
    ["iPhone X", "30900", "images/iphoneX.png", Colors.green],
  ];

  List _cartItems = [];
  get shopItems => _shopItems;

  get cartItems => _cartItems;

//add items to Cart
  void addItemsToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove Items from the Cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
