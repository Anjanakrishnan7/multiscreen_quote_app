import 'package:flutter/material.dart';
import 'package:multiscreen_quote_app/model.dart';

class Home extends StatelessWidget {
  @override
  List<Quote> quote = [
    Quote(
      quote:
          "I have to remind myself that some birds aren't meant to be caged. Their feathers are just too bright.",
      author: "-Red",
    ),
    Quote(
      quote:
          "Life was like a box of chocolates. You never know what you're gonna get",
      author: "-Forrest Gump",
    ),
    Quote(
      quote:
          "Don't ever let somebody tell you... You can't do something. Not even me",
      author: "-Christpher",
    ),
    Quote(
      quote:
          "Power resides where men believe it resides. It's a trick. A shadow on the wall. And a very small man can cast a very large shadow",
      author: "-Lord Varys",
    ),
    Quote(
      quote: "I'm tired of all the pain I feel and hear in the world everyday.",
      author: "-John coffey",
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        title: Center(child: Text("QUOTES AND AUTHOR", style: TextStyle(color: Colors.white))),
      ),
      body: ListView.builder(
        itemCount: quote.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(onTap: () {
              Navigator.pushNamed(arguments: quote[index],context, "details");
            },
              child: Card(
                color: Colors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Align(child: Text(quote[index].quote,style: TextStyle(color: Colors.white),),alignment: Alignment.topLeft,),
                      SizedBox(height: 20),
                      Align(child: Text(quote[index].author,style: TextStyle(color: Colors.white),),alignment: Alignment.bottomRight),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
