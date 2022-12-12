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
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    ClipOval(
                      child: Container(
                        width: 270,
                        height: 270,
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 10),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(250 / 2),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://picsum.photos/id/257/200/300"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "HELLO WORLD",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontStyle: FontStyle.italic),
                )
              ],
            ),
          )),
    );
  }
}
