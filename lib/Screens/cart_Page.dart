import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopnow/model/cart_Model.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Cart"),
        ),
        body: Container(
          color: Colors.blue,
        )

        //  Consumer<CartModel>(
        //   builder: (context, value, child) {
        //     return Column(children: [
        //       Expanded(
        //         child: ListView.builder(
        //           itemCount: value.cartItems.length,
        //           itemBuilder: (context, index) {
        //             return Padding(
        //               padding: const EdgeInsets.all(12.0),
        //               child: Container(
        //                 decoration: BoxDecoration(
        //                     color: Colors.grey[200],
        //                     borderRadius: BorderRadius.circular(12)),
        //                 child: ListTile(
        //                     leading: Image.asset(
        //                       value.cartItems[index][2],
        //                       height: 36,
        //                     ),
        //                     title: Text(value.cartItems[index][0]),
        //                     subtitle: Text('\$ ' + value.cartItems[index][1]),
        //                     trailing: IconButton(
        //                       icon: const Icon(Icons.cancel),
        //                       onPressed: () =>
        //                           Provider.of<CartModel>(context, listen: false)
        //                               .removeItemFromCart(index),
        //                       // Provider.of(context, listen: false).removeItemFromCart(index),
        //                     )),
        //               ),
        //             );
        //           },
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(20.0),
        //         child: Container(
        //           decoration: const BoxDecoration(color: Colors.black),
        //           child: Padding(
        //             padding: const EdgeInsets.all(20.0),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Column(
        //                   children: [
        //                     const Text(
        //                       "Total Amount To pay",
        //                       style: TextStyle(color: Colors.white),
        //                     ),
        //                     Text(
        //                       value.calculateTotal(),
        //                       style: const TextStyle(color: Colors.white),
        //                     ),
        //                   ],
        //                 ),
        //                 ElevatedButton(onPressed: () {}, child: const Text("Pay Now"))
        //               ],
        //             ),
        //           ),
        //         ),
        //       )
        //     ]);
        //   },
        // )
        );
  }
}
