import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> buttons = [
      "IGTV",
      "TRAVEL",
      " ARCHITECHTURE",
      "DECOR",
      "STYLE",
    ];
    return Scaffold(
      body: CustomScrollView(
        //from here design of search bar on the top goes
        slivers: [
          //like children
          SliverAppBar(
            title: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "search",
                contentPadding: EdgeInsets.all(0),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
                fillColor: Color.fromRGBO(220, 220, 220, 1),
                filled: true,
              ),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add))
            ], //search page content ends here
          ),
          SliverAppBar(
            //addig genre like igtv,travel rtc..z
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      5,
                      (index) => Container(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: OutlinedButton(
                                onPressed: () {}, child: Text(buttons[index])),
                          ))),
            ),
          )
        ],
      ),
    );
  }
}
