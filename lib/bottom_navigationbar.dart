import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:shopnow/main.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: MyApp.selectedIndexNotifier,
      builder: (BuildContext context, int updatedIndex, Widget? _) {
        return Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 6),
          child: SalomonBottomBar(
            curve: Curves.easeOutQuint,
            items: [
              SalomonBottomBarItem(
                  title: Text("Home"),
                  icon: const Icon(Icons.home),
                  selectedColor: Colors.pink,
                  unselectedColor: Colors.black),
              // CustomNavigationBarItem(
              //   icon: const Icon(Icons.restaurant_menu),
              // ),
              SalomonBottomBarItem(
                  title: Text("Cart"),
                  selectedColor: Colors.pink,
                  icon: const Icon(Icons.shopping_cart_outlined),
                  unselectedColor: Colors.black),
              SalomonBottomBarItem(
                  title: Text("Profile"),
                  icon: const Icon(Icons.person),
                  selectedColor: Colors.pink,
                  unselectedColor: Colors.black),
              SalomonBottomBarItem(
                  title: Text("Settings"),
                  icon: const Icon(Icons.settings_outlined),
                  selectedColor: Colors.pink,
                  unselectedColor: Colors.black),
            ],
            currentIndex: updatedIndex,
            onTap: (newIndex) {
              MyApp.selectedIndexNotifier.value = newIndex;
            },
          ),
        );
      },
    );
  }
}
