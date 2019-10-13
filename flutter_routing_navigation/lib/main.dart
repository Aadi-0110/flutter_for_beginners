import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Navigation App",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First Screen",
          textDirection: TextDirection.ltr,
        ),
      ),
      body: Center(
        child: Text(
            "Flutter First Screen",
          textDirection: TextDirection.ltr,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        child: Icon(Icons.chevron_right),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Second Screen",
          textDirection: TextDirection.ltr,
        ),
      ),
      body: Center(
        child: Text(
          "Flutter Second Screen",
          textDirection: TextDirection.ltr,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
        child: Icon(Icons.chevron_left),
      ),
    );
  }
}