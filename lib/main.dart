import 'package:flutter/material.dart';
import 'package:untitled5/cart_page.dart';
import 'package:untitled5/main_page.dart';
void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartPage(),

    );




  }
}

