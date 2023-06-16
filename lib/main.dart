import 'package:flutter/material.dart';
import 'package:foody/ui/pages/Orders/My_orders.dart';
import 'package:foody/ui/pages/root/root_page.dart';
import 'package:foody/ui/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foody 🍕 ',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home:SplashScreen(),
    );
  }
}
