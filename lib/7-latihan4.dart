import 'dart:math';

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
        body: Center(
            child: Transform.rotate(
          angle: pi / (180 / 90), // ini berarti berputar 90 derajat
          child: FlutterLogo(
            size: 200,
          ),
        )),
      ),
    );
  }
}
