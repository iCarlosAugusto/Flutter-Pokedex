import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Column(children: [       
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Texto 1"),
              Text("Texto 2")
            ],
          )
        ]),
      ),    
    );
  }
}


