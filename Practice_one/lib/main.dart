import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('My App'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 1'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 2'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 3'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 4'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 5'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 6'),
          ),
        ],
      ),
    );
  }
}
