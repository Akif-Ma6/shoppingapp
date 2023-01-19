import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopnow/Screens/cart_Page.dart';

class MobileBtmSheet extends StatelessWidget {
  const MobileBtmSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .65,
      child: ListView(physics: const NeverScrollableScrollPhysics(), children: [
        Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset("images/GalaxyS22Ultra.jpeg"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.star, color: Colors.white),
                        Icon(Icons.star, color: Colors.white),
                        Icon(Icons.star, color: Colors.white),
                        Icon(Icons.star, color: Colors.white),
                        Icon(Icons.star_half_rounded, color: Colors.white),
                        Text("(35,252)", style: TextStyle(color: Colors.white))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("12 GB RAM",
                              style: TextStyle(color: Colors.white)),
                        ),
                        Text(
                          "|",
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("256 GB Storage",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            "6.8 inch Dynamic AMOLED 2X Display",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "|",
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "5000 mAh Battery",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "108MP + 12MP + 10MP+ 10MP Rear Camera",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "|",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "40MP Front Camera",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.yellow,
                        child: Column(
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "Top Discount Sale !",
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("Real Price   ",
                                        style: TextStyle(fontSize: 20)),
                                    Text(
                                      "₹1,19,900",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text("Discount Price   ",
                                          style: TextStyle(fontSize: 22)),
                                      Text(
                                        "₹1,10,900",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: TextButton(
                                style: ButtonStyle(
                                    side: MaterialStateProperty.all(
                                        const BorderSide(
                                            color: Colors.white, width: 1)),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.white)),
                                onPressed: () {
                                  // Provider.of<NewOrderViewModel>(context,
                                  //         listen: false)
                                  //     .itemQty = 1;
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: TextButton(
                                style: ButtonStyle(
                                    side: MaterialStateProperty.all(
                                        const BorderSide(
                                            color: Colors.white, width: 1)),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.white)),
                                onPressed: () {
                                  // Provider.of<NewOrderViewModel>(context,
                                  //         listen: false)
                                  //     .addToBucketList();
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                          action: SnackBarAction(
                                            label: "Go To Carts",
                                            onPressed: () {
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //       builder: (context) =>
                                              //           ScreenCart(),
                                              //     ));
                                              // Navigator.of(context)
                                              //     .push(MaterialPageRoute(
                                              //   builder: (context) {
                                              //     return ScreenCart();
                                              //   },
                                              // ));
                                            },
                                          ),
                                          duration: Duration(seconds: 2),
                                          content: Text("Added To Cart List")));
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.shopping_cart,
                                      color: Colors.black,
                                    ),
                                    const Text(
                                      "Add To Cart",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ],
                                )),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
