import 'package:flutter/material.dart';
import 'package:shopnow/pages/mobile_bottomsheet.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _HomePageState();
}

class _HomePageState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Icon(
            Icons.location_on,
            color: Colors.grey[700],
          ),
        ),
        title: Text(
          'Kerala,India',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0, left: 1),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.black,
      //   // onPressed:
      //   onPressed: () =>
      //       Navigator.push(context, MaterialPageRoute(builder: (context) {
      //     return const ScreenCart();
      //   })),
      //   child: const Icon(Icons.shopping_bag),
      // ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              // categories -> horizontal listview
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "You May Like These",
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    const TabBar(tabs: [
                      Tab(
                        child: Text(
                          "ios",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "android",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ]),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.82,
                      child: TabBarView(children: [
                        LayoutBuilder(builder: (context, constraints) {
                          return GridView.builder(
                            itemCount: 20,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  constraints.maxWidth > 620 ? 6 : 4,
                            ),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  showBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return const MobileBtmSheet();
                                    },
                                  );
                                },
                                child: Card(
                                  color: Colors.cyan,
                                  child: ListView(children: [
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("iPhone ${index + 1} pro"),
                                          Icon(Icons.phone_iphone, size: 40),
                                          // Row(
                                          //   mainAxisAlignment:
                                          //       MainAxisAlignment.center,
                                          //   children: [
                                          //     InkWell(
                                          //       onTap: () {},
                                          //       child: Ink(
                                          //         decoration: BoxDecoration(
                                          //           border: Border.all(
                                          //               color: Colors.red),
                                          //           borderRadius:
                                          //               const BorderRadius.all(
                                          //             Radius.circular(5),
                                          //           ),
                                          //         ),
                                          //         child: const Padding(
                                          //           padding: EdgeInsets.all(3.0),
                                          //           child: Center(
                                          //             child: Icon(
                                          //               Icons.remove,
                                          //               color: Colors.red,
                                          //             ),
                                          //           ),
                                          //         ),
                                          //       ),
                                          //     ),
                                          //     Padding(
                                          //       padding: const EdgeInsets.only(
                                          //           left: 5, right: 5),
                                          //       child: Builder(builder: (context) {
                                          //         return Text("1");
                                          //       }),
                                          //     ),
                                          //     InkWell(
                                          //       onTap: () {
                                          //         //   refresh(() {});
                                          //         // setState(() {/*  */
                                          //         //   qtyValue++;
                                          //         //   _controller.text = qtyValue.toString();

                                          //         //   print(qtyValue);
                                          //         // });
                                          //       },
                                          //       child: Ink(
                                          //         decoration: BoxDecoration(
                                          //           border: Border.all(
                                          //               color: Colors.green),
                                          //           borderRadius:
                                          //               const BorderRadius.all(
                                          //             Radius.circular(5),
                                          //           ),
                                          //         ),
                                          //         child: const Padding(
                                          //           padding: EdgeInsets.all(3.0),
                                          //           child: Center(
                                          //             child: Icon(
                                          //               Icons.add,
                                          //               color: Colors.green,
                                          //             ),
                                          //           ),
                                          //         ),
                                          //       ),
                                          //     )
                                          //   ],
                                          // ),
                                          Text("RS.1201000")
                                        ]),
                                  ]),
                                ),
                              );
                            },
                          );
                        }),
                        GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return Card(
                              color: Colors.red,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Samsung S22 Ultra"),
                                  Icon(Icons.phone_iphone)
                                ],
                              ),
                            );
                          },
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
