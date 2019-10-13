import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override // It overrides the Stateless Widget build method
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Hello World Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "Flutter Hello World",
            textDirection: TextDirection.ltr,
          ),
        ),
        body: Center(
          child: Text(
              "Hello World!! \nMy new Flutter App",
            textDirection: TextDirection.ltr, // It's important to give the text-direction
          ),
        ),
      ),
    );
  }
}
