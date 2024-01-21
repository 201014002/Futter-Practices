import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.pink,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
   {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      animationDuration: Duration(seconds: 5),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text(
            'Ebook',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicator: UnderlineTabIndicator(
              borderRadius: BorderRadius.circular(2),
              borderSide: BorderSide(width: 5,color: Colors.white),
              insets: EdgeInsets.symmetric(horizontal: 80),
            ),
            tabs: [
              Tab(
                icon: Icon(Icons.feed),
              ),
              Tab(
                icon: Icon(Icons.book),
              ),
              Tab(
                icon: Icon(Icons.search),
              )
            ],
          ),
        ),
        body:TabBarView(
           children: [
            Center(child: Text('My Feed')),
            Center(child: Text('Books')),
            Center(child: Text('Search')),
          ],
        )
      ),
    );
  }
}
