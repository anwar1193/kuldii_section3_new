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
        body: GridView(
          padding: EdgeInsets.all(10), // space paling atas, kanan, bawah, kiri
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // jumlah kotak tiap baris
            mainAxisSpacing: 10, // space diantara kotak (vertical)
            crossAxisSpacing: 10, // space diantara kotak (horizontal)
            childAspectRatio: 2 / 1, // perbandingan lebar / tinggi
          ),
          children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.lightBlue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.lightBlue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.lightBlue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.lightBlue,
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
