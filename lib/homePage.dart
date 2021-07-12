import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<String> profileImage = [
    "images/first.jpeg",
    "images/secound.jpeg",
    "images/third.jpeg",
    "images/fouth.jpeg",
    "images/fifth.jpeg",
    "images/logo.png",
  ];

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            //story
            SingleChildScrollView(
              scrollDirection:
                  Axis.horizontal //command to add side wise scroll view
              ,
              child: Row(
                children: List.generate(
                  // generate list of contents
                  6, //this number and generated (profileImage)list must be equal
                  (index) => Container(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            //generate circle avatars
                            backgroundImage: AssetImage("images/story.jpg"),
                            radius: 35,

                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage(profileImage[index]),
                                    //before this command add list in top .check profileImage list
                                    radius: 33,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "profile name",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
