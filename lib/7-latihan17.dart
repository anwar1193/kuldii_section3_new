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
          body: GridView.builder(
              itemCount: 50,
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "HALLO",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                } else {
                  return Container(
                    color: Colors.amber,
                    child: Center(
                      child: Text(
                        "HALLO",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                }
              })),
    );
  }
}
