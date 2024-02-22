import 'package:flutter/material.dart';

import '../core/LogIn.dart';

// ignore: non_constant_identifier_names
Widget AppBarWidget(context) {
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    title: const Text("Shopify"),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) =>LogIn()),
          );
        },
        icon: const Icon(Icons.person),
        color: const Color(0xFF323232),
      ),
    ],
  );
}