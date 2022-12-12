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
          body: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "HELLO",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    "HELLO",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
