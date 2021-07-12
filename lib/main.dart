import 'package:flutter/material.dart';
import 'homePage.dart';

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
        //the theme data is use as a centralized way to change every wigets property
        iconTheme:
            IconThemeData(color: Colors.black), //we can change icon color here
        appBarTheme: AppBarTheme(
            elevation: 1,
            color: Colors.white), //we can change appbar color here
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
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
        body: HomePage(),
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
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), title: Text(""))
          ],
        ));
  }
}
