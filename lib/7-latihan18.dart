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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            leading: FlutterLogo(),
            title: Text(
              "Text Judul",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                  ))
            ],
          ),
          body: ListView.builder(
              padding: EdgeInsets.all(20),
              itemCount: 50,
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Text(
                          "HELLO ${index + 1}",
                          style: TextStyle(fontSize: 25),
                        ),
                      )
                    ],
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        color: Colors.amber,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Text(
                          "HELLO ${index + 1}",
                          style: TextStyle(fontSize: 25),
                        ),
                      )
                    ],
                  );
                }
              })),
    );
  }
}
