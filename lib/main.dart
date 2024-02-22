import 'package:flutter/material.dart';
import 'global_widgets/BottomNavBarWidget.dart';
import 'presentation/HomeScreen/view/HomeScreen.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatefulWidget {
  const ShopApp({super.key});

  @override
  State<ShopApp> createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white12,
        primaryColorDark: Colors.white30,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

int currentIndex = 0;
void navigationScreens(int index) {
  currentIndex = index;
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> viewContainer = [
    HomePage(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
