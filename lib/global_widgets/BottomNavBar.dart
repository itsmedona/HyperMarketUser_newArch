import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:new_architect/presentation/CartScreen/view/CartScreen.dart';
import 'package:new_architect/presentation/HomeScreen/view/HomeScreen.dart';

import '../presentation/FavoritesScreen/view/FavoritesScreen.dart';
import '../presentation/ProfileScreen/view/ProfileScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoritesScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons.home,
          Icons.shopping_cart,
          Icons.favorite_border,
          Icons.person
        ],
        inactiveColor: Colors.black.withOpacity(0.6),
        activeColor: Colors.deepOrangeAccent,
        gapLocation: GapLocation.none,
        activeIndex: pageIndex,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        iconSize: 25,
        rightCornerRadius: 10,
        elevation: 0,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}




























































/*
import 'package:flutter/material.dart';
import 'package:new_architect/presentation/HomeScreen/view/HomeScreen.dart';
import '../presentation/CartScreen/view/CartScreen.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _NavScreenState();
}

class _NavScreenState extends State<BottomNavBarWidget> {
  int selectedIndex = 0;
  List<Widget> myWidgetList = [
    HomeScreen(),
    CartScreen(),
    // FavoritesScreen(),
    // ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myWidgetList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          // BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favorites"),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
*/