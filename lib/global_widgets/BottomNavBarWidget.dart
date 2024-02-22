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
  List<Widget> MyWidgetList = [
    HomeScreen(),
    //SearchScreen(),
    CartScreen(),
    //FavoritesScreen(),
    //ProfileScreen()
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidgetList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 70, 64, 64),
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favorites"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
