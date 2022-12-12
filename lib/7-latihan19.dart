import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            leading: FlutterLogo(),
            title: Text(
              "Text Judul",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                  ))
            ],
          ),
          body: ListView.builder(
              padding: EdgeInsets.all(20),
              itemCount: 50,
              itemBuilder: (context, index) {
                return Container(
                  height: 150,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://picsum.photos/id/${778 + index}/200/300"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "HELLO",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                );
              })),
    );
  }
}
