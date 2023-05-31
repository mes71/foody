import 'package:flutter/material.dart';
import 'package:foody/ui/pages/detals/details1.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _textContoroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Foody',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _textContoroller,
              decoration: InputDecoration(
                hintText: 'Search your desired foods or Restaurant',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textContoroller.clear();
                  },
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int pos) {
                return GestureDetector(
                  onTap: () {
                    onTap:
                    () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FoodPage(),
                        ),
                      );
                    };
                  },
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Card(
                      elevation: 0,
                      color: Colors.deepOrange,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
