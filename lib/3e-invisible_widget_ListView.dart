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
        body: ListView(
          scrollDirection: Axis.horizontal, // Sebagai Row
          children: [
            Container(
              width: 200, // Hanya bisa atur lebar (jika row)
              height: 150, // atur tinggi tidak ber-efek (hapus saja) (jika row)
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
    );
  }
}
