import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text("Invisible Widget"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis
              .horizontal, // dihilangkan saja kalo Column (atau diganti jadi Axis.vertical)
          child: Row(
            // bisa di ganti Column
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
