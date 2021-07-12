import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  var numbers = 0;
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
  int numbers = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
      currentIndex: numbers,
      selectedItemColor: Colors.purpleAccent,
      unselectedItemColor: Colors.black87,
      onTap: (selectedobj) {
        setState(() {
          numbers = selectedobj;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
        BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("")),
        BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("")),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text("")),
        BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text(""))
      ],
    ));
  }
}
