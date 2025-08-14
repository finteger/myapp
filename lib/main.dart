import 'package:flutter/material.dart';
import 'package:myapp/screens/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home_Page(),
        '/second': (context) => const Second_Page(),
      },
    );
  }
}

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

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

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlutterLogo(size: 83),
            Expanded(child: Text('Flutter App')),
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
