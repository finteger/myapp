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
          Text('First', style: TextStyle(fontSize: 43)),
          Text('Second', style: TextStyle(fontSize: 43)),
          Text('Third', style: TextStyle(fontSize: 43)),
          Text('Fourth', style: TextStyle(fontSize: 43)),
          Text('First', style: TextStyle(fontSize: 43)),
          Text('Second', style: TextStyle(fontSize: 43)),
          Text('Third', style: TextStyle(fontSize: 43)),
          Text('Fourth', style: TextStyle(fontSize: 43)),
          Text('First', style: TextStyle(fontSize: 43)),
          Text('Second', style: TextStyle(fontSize: 43)),
          Text('Third', style: TextStyle(fontSize: 43)),
          Text('Fourth', style: TextStyle(fontSize: 43)),
        ],
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
