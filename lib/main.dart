import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: Icon(Icons.home)),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.account_box_rounded)),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
