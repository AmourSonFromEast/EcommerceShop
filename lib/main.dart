import 'package:ecommerceapp/pages/cart_page.dart';
import 'package:ecommerceapp/theme/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/models/shop.dart';
import 'pages/intro_page.dart';
import 'pages/shop_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (contex) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/into_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
