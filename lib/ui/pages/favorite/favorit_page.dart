import 'package:flutter/material.dart';

class Favoritepage extends StatefulWidget {
  const Favoritepage({Key? key}) : super(key: key);

  @override
  State<Favoritepage> createState() => _FavoritepageState();
}

class _FavoritepageState extends State<Favoritepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Page'),
      ),
    );
  }
}
