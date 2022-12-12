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
      debugShowCheckedModeBanner: false, // menghilangkan debug
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          leading: FlutterLogo(),
          title: Text(
            "Text Judul",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            // titik tiga pojok kanan atas
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ))
          ],
        ),
        body: Center(
          child: Text(
            "Hello World",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
