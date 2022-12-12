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
        body: Stack(
          alignment: AlignmentDirectional.centerEnd, // posisi stack
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
