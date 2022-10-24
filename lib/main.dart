import 'package:flutter/material.dart';
import 'package:profile_task/screens/cart_items_screen.dart';
import 'package:profile_task/widgets/cart_item.dart';
import 'package:profile_task/screens/home_screen.dart';
import 'package:profile_task/screens/category_meals_screen.dart';
import 'package:profile_task/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/category_meals": (context) => const MealsScreen(),
        // "/product": (context) => const ProductScreen(),
        "/cart": (context) => const CartItemsScreen(),
      },
    );
  }
}
