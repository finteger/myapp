import 'package:flutter/material.dart';

const items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

List<Widget> containers =
    items.map((item) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.blue,
          height: 200,
          child: Center(child: Text('$item')),
        ),
      );
    }).toList();

class Second_Page extends StatelessWidget {
  const Second_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlutterLogo(size: 83),
            Expanded(child: Text('Second Screen')),
          ],
        ),
      ),
      drawer: Drawer(),
      body: ListView.builder(
        itemCount: containers.length,
        itemBuilder: (context, index) {
          return containers[index];
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home, size: 34),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            IconButton(
              icon: Icon(Icons.settings, size: 34),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
            const IconButton(
              icon: Icon(Icons.search, size: 34),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
