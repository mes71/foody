import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foody/generated/assets.dart';
import 'package:foody/ui/pages/root/root_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => RootPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: SizedBox(height: 100, child: Image.asset(Assets.imagesLogo)),
      ),
    );
  }
}
