import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Buat List Dari Class Kotak
  List<Map<String, dynamic>> data = List.generate(
    10, // Jumlah Kotak / item yang akan di buat
    (index) => {
      "text": "Kotak - ${index + 1}",
      "color": Color.fromARGB(
          255,
          Random().nextInt(256), // red random 0 - 256
          100 + Random().nextInt(256), // green random 100 - 256
          100 + Random().nextInt(256)) // blue random 100 - 256
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text("Mapping Collection"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis
              .vertical, // dihilangkan saja kalo Column (atau diganti jadi Axis.vertical)
          child: Column(
            // bisa di ganti Column
            children: data
                .map((e) => Kotak(text: e["text"], warna: e["color"]))
                .toList(),
          ),
        ),
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
