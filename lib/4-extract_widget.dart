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
          title: Text("Invisible Widgets"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis
              .vertical, // dihilangkan saja kalo Column (atau diganti jadi Axis.vertical)
          child: Column(
            // bisa di ganti Column
            children: [
              Kotak(
                warna: Colors.amber,
                text: "Kuning",
              ),
              Kotak(
                warna: Colors.green,
                text: "Hijau",
              ),
              Kotak(
                warna: Colors.red,
                text: "Merah",
              ),
              Kotak(
                warna: Colors.blue,
                text: "Biru",
              ),
              Kotak(
                warna: Colors.purple,
                text: "Ungu",
              ),
              Kotak(
                warna: Colors.orange,
                text: "Orange",
              ),
            ],
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
