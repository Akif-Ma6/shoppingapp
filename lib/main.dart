import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shopnow/Screens/cart_Page.dart';
import 'package:shopnow/Screens/profile_screen.dart';
import 'package:shopnow/Screens/settings_page.dart';
import 'package:shopnow/bottom_navigationbar.dart';
import 'package:shopnow/model/cart_Model.dart';
import 'package:shopnow/Screens/homePage.dart';
import 'package:shopnow/pages/intro_Page.dart';

void main() {
  // Provider.debugCheckInvalidValueType = null;
  runApp(MaterialApp(
    builder: (context, child) => ResponsiveWrapper.builder(
      child,
      maxWidth: 1200,
      minWidth: 480,
      defaultScale: true,
      breakpoints: const [
        ResponsiveBreakpoint.resize(480, name: MOBILE),
        ResponsiveBreakpoint.autoScale(800, name: TABLET),
        ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      ],
    ),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(brightness: Brightness.light),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      body: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, _) {
            return _pages[updatedIndex];
          }),
    );
  }

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = [
    const ScreenHome(),
    const ScreenCart(),
    ScreenProfile(),
    const ScreenSettings(),
  ];
}
