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
          Row(children: [
            
            Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.red,
              width: 20,
              height: 20
            )
          ], mainAxisAlignment: MainAxisAlignment.center,)
        ]),
      ),    
    );
  }
}


