import 'package:ecommerce_ui/Cart_screen.dart';
import 'package:ecommerce_ui/Checkout_screen.dart';
import 'package:ecommerce_ui/Home_screen.dart';
import 'package:ecommerce_ui/Product_details_screen.dart';
import 'package:ecommerce_ui/Signup_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import all other screens

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoginScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/home': (context) => HomePage(),
        '/product': (context) => ProductDetailsScreen(productName: '', imageUrl: '',),
        '/cart': (context) => CartScreen(),
        '/checkout': (context) => CheckoutScreen(),
      },
    );
  }
}