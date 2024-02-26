import 'package:flutter/material.dart';
import 'package:new_architect/core/Registration.dart';


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
      home: const RegistrationScreen(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor:Colors.orange,
        primaryColorDark: Colors.orangeAccent,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


