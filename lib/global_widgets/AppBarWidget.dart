import 'package:flutter/material.dart';
import 'package:new_architect/presentation/HomeScreen/view/HomeScreen.dart';

// ignore: non_constant_identifier_names
Widget AppBarWidget(context) {
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    title: const Text("Shopify"),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        icon: const Icon(Icons.person),
        color: const Color(0xFF323232),
      ),
    ],
  );
}
