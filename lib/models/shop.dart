import 'package:ecommerceapp/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Brutal glasses",
      price: 249.44,
      description: "Brutal glasses - это смелые и стильные очки, демонстрирующие характер и индивидуальность их обладателя.",
      imagePath: 'assets/glasses.png',
    ),
    Product(
      name: "Nike Blazer Mid '77 Shoes",
      price: 129.44,
      description: "Эти кеды представляют собой идеальное сочетание классического дизайна и инновационных технологий.",
      imagePath: 'assets/shoes.png',
    ),
    Product(
      name:
          "Nike Sportswear",
      price: 79.44,
      description: "Этот свитшот подойдет как для спортивной экипировки, так и для создания уличного образа благодаря лаконичному дизайну..",
      imagePath: 'assets/hoodie.png',
    ),
    Product(
      name: "Apple Watch SE",
      price: 489.44,
      description:
          "Свежий дизайн, цветовые варианты и множество функций делают этот гаджет идеальным компаньоном для повседневной жизни",
      imagePath: 'assets/iwatch.png',
    ),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
