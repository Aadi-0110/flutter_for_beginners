import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Material Route App",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: '/',
      routes: {
        FirstScreen.routeName: (context) => FirstScreen(),
        SecondScreen.routeName: (_) => SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget{
  static const routeName = "/";
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
        child: RaisedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/second');
            },
            child: Text(
              "Go to Second Screen",
              textDirection: TextDirection.ltr,
            )
        )
      ),
    );
  }
}


class SecondScreen extends StatelessWidget{
  static const routeName = "/second";
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
        child: RaisedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text(
              "Go to First Screen",
              textDirection: TextDirection.ltr,
            )
        )
      ),
    );
  }
}