import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}


class Home extends StatelessWidget {
  mySnackBar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
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
            onTap: (){mySnackBar(context, "Item 1");},
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 2'),
            onTap: (){mySnackBar(context, "Item 2");},
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 3'),
            onTap: (){mySnackBar(context, "Item 3");},
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 4'),
            onTap: (){mySnackBar(context, "Item 4");},
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 5'),
            onTap: (){mySnackBar(context, "Item 5");},
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Item 6'),
            onTap: (){mySnackBar(context, "Item 6");},
          ),
        ],
      ),
    );
  }
}
