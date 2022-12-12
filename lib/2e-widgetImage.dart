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
          title: Text("Widget Image"), // Tulisan AppBar
          centerTitle: true, // Posisi AppBar Apakah di tengah?
        ),
        body: Center(
            child:
                // Image Network
                // Image.network(
                //     "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1594034471/m5mke6wr2apvoujw83ay.jpg"),

                // Image Assets
                Image.asset("assets/sale.jpg")),
      ),
    );
  }
}
