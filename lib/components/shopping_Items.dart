import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopItems extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemDetails;
  final String imagePath;
  final color;
  void Function()? onPressed;

  ShopItems({
    super.key,
    required this.itemName,
    required this.itemDetails,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: color[100], borderRadius: BorderRadius.circular(12)),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset(
            imagePath,
            height: 100,
          ),
          Text(itemName),
          ElevatedButton(
            onPressed: onPressed,
            child: Text('\$ ' + itemPrice),
          )
        ]),
      ),
    );
  }
}
