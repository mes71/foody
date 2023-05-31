import 'package:flutter/material.dart';
import 'package:foody/ui/pages/Cart/cart_page.dart';
import 'package:foody/ui/pages/Orders/My_orders.dart';
import 'package:foody/ui/pages/favorite/favorit_page.dart';
import 'package:foody/ui/pages/home/home_page.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0; // keep track of the selected tab
  List<Widget> _pages = [
    // define the pages for each tab
    Homepage(),
    Favoritepage(),
    Cartpage(),
    MyOrders(),
  ];

  void _onTabSelected(int index) {
    // update the selected tab and page
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      // show the selected page
      floatingActionButton: FloatingActionButton(
        // define the FAB button
        onPressed: () {}, child: Icon(Icons.shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // dock the FAB button to the center of the bottom bar
      bottomNavigationBar: BottomAppBar(
        // define the bottom bar
        shape: CircularNotchedRectangle(), // add a notch for the FAB button
        child: Row(
          // use a row to show 4 tabs
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              // tab 1
              icon: Icon(Icons.home),
              color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
              onPressed: () => _onTabSelected(0),
            ),
            IconButton(
              // tab 2
              icon: Icon(Icons.favorite),
              color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
              onPressed: () => _onTabSelected(1),
            ),
            SizedBox(width: 50),
            // leave some space for the FAB button
            IconButton(
              // tab 3
              icon: Icon(Icons.shopping_bag),
              color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
              onPressed: () => _onTabSelected(2),
            ),
            IconButton(
              // tab 4
              icon: Icon(Icons.menu),
              color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
              onPressed: () => _onTabSelected(3),
            ),
          ],
        ),
      ),
    );
  }
}

// dummy pages for demonstration

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 1'),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 2'),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 3'),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Page 4'),
    );
  }
}
