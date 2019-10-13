import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Flutter Route and Data App",
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (_) => Home(),
        SecondScreen.routeName: (_) => SecondScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class Home extends StatelessWidget{
  static const routeName = '/';
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          textDirection: TextDirection.ltr,
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Icon(Icons.navigate_next),
                onPressed: (){
                  _newNavigateAndDisplay(context, "abc", "def");
                },
            ),
            RaisedButton(
              child: Text("New Pass"),
                onPressed: (){
                Navigator.pushNamed(
                    context,
                    SecondScreen.routeName,
                    arguments: SomeArguments(
                        "LOL",
                        "This was also passed"
                    )
                );
                }
            )
          ],
        ),
      ),
    );

  }

  _newNavigateAndDisplay(BuildContext context, String string1, String string2) async{
    final result = await Navigator.pushNamed(
          context,
          SecondScreen.routeName,
          arguments: SomeArguments(
              "$string1",
              "$string2"
          )
      );
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }
}



class SecondScreen extends StatelessWidget{
  static const routeName = '/second';
  @override
  Widget build(BuildContext context) {
    final SomeArguments args = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
            args.name,
          textDirection: TextDirection.ltr,
        ),
      ),
      body: Center(
        child: Text(
          args.string,
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

class SomeArguments{
  final String name; // final Entity can be assigned only once in the object life cycle
  final String string;

  SomeArguments(this.name, this.string);
}



