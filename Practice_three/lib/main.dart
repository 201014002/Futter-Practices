import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  mySnackBar(context, msg) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  var MyItems = [
    {"name": "Ahmed", "city": "Dhaka", "age": "33"},
    {"name": "Karima", "city": "Dhaka", "age": "24"},
    {"name": "Aryan", "city": "Khulna", "age": "30"},
    {"name": "Mithi", "city": "Dhaka", "age": "31"},
    {"name": "Adima", "city": "Sylhet", "age": "35"},
    {"name": "Arra", "city": "Dhaka", "age": "32"},
    {"name": "Pinky", "city": "Chandpur", "age": "22"},
    {"name": "Nayim", "city": "Dhaka", "age": "26"},
    {"name": "Kamal", "city": "Faridpur", "age": "28"},
    {"name": "Jamal", "city": "Dhaka", "age": "36"},
    {"name": "Arma", "city": "Dhaka", "age": "21"},
    {"name": "Naina", "city": "Dhaka", "age": "30"},
    {"name": "Arin", "city": "Khulna", "age": "20"},
    {"name": "Meem", "city": "Dhaka", "age": "27"},
    {"name": "Juli", "city": "Sylhet", "age": "23"},
    {"name": "Muyaz", "city": "Dhaka", "age": "34"},
    {"name": "Ehan", "city": "Chandpur", "age": "25"},
    {"name": "Nayima", "city": "Dhaka", "age": "26"},
    {"name": "Krim", "city": "Faridpur", "age": "29"},
    {"name": "Jamil", "city": "Dhaka", "age": "36"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('My App'),
      ),
      body: ListView.builder(itemCount: MyItems.length,
      itemBuilder: (context,index){
        return ListTile(
          leading: Icon(Icons.star),
          title: Text(MyItems[index]['name']!),
          subtitle: Text(MyItems[index]['city']!),
           onTap: (){
            mySnackBar(context,MyItems[index]['age']!);
        );
      },),
    );
  }
}
