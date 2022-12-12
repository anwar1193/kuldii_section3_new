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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Widget Builder"),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => Kotak(
                text: "Kotak Ke - ${index + 1}",
                warna: Color.fromARGB(255, 100 + Random().nextInt(200),
                    100 + Random().nextInt(200), 100 + Random().nextInt(200)))),
      ),
    );
  }
}

// Class Ini Bisa Juga di letakkan di file yang berbeda
class Kotak extends StatelessWidget {
  const Kotak({Key? key, required this.text, required this.warna})
      : super(key: key);

  final String text;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: warna,
      child: Center(child: Text(text)),
    );
  }
}
