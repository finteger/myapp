import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [FlutterLogo(size: 45)],
        ),
      ),
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
        Container(
          color: Colors.red,
          height: 100, 
          width: 100),
            Container(
          color: Colors.blue,
          height: 100, 
          width: 100),
            Container(
          color: Colors.green,
          height: 100, 
          width: 100),
            Container(
          color: Colors.yellow,
          height: 100, 
          width: 100),
          ]),
           bottomNavigationBar: BottomAppBar(),
    );
  }
}
