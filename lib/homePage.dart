import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt_rounded),
                color: Colors.black,
              ),
              Spacer(),
              Center(
                child: Image.asset(
                  "images/logo.png",
                  height: 60,
                ),
              ),
              Spacer()
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_rounded,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
