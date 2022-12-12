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
          backgroundColor: Colors.red, // warna background AppBar
          title: Text("Widget FlutterLogo"), // Tulisan AppBar
          centerTitle: true, // Posisi AppBar Apakah di tengah?
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  // Perintah Saat Di Klik
                  print("Klik Berhasil"); // print di console/terminal
                },
                child: Text("Klik Disini"))),
      ),
    );
  }
}
