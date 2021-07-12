import 'dart:ffi';

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
  List<String> post = [
    "images/1.jpeg",
    "images/2.jpeg",
    "images/3.jpeg",
    "images/4.jpg",
    "images/5.jpeg",
  ];
  Future<Void> onRefresh() async => await Future.delayed(
      Duration(seconds: 1)); //fuction for adding refresh button

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
      body: RefreshIndicator(
        onRefresh: onRefresh, //refresh button also need to add above @override
        child: SingleChildScrollView(
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
                          mainAxisAlignment: MainAxisAlignment.start,
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
              Column(
                  children: List.generate(
                      5,
                      (index) => Column(
                            children: [
                              //header posr
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: CircleAvatar(
                                          //generate circle avatars
                                          backgroundImage:
                                              AssetImage("images/story.jpg"),
                                          radius: 15,

                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      profileImage[index]),
                                                  //before this command add list in top .check profileImage list
                                                  radius: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text("profile name"),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert))
                                ],
                              ),
                              Image.asset(post[index]),
                              //footter post
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.comment)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.share_outlined)),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.bookmark)),
                                ],
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          //using this widget we can add 2 differemt text format
                                          style: TextStyle(color: Colors.black),
                                          children: [
                                            TextSpan(text: "liked by"),
                                            TextSpan(
                                                text: "profile name",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            TextSpan(
                                                text: "\nProfile Name",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                                text:
                                                    "best picture on instagram",
                                                style: TextStyle(fontSize: 13)),
                                          ],
                                        ),
                                      ),
                                      Text("view all 12 comments",
                                          style: TextStyle(
                                            color: Colors.black38,
                                          ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )))
            ],
          ),
        ),
      ),
    );
  }
}
