import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // Define the default font family.
        fontFamily: 'Cabin',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Cabin'),
        ),
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Ariel's Workshop")),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('images/app_main.png'),
                  ),
                  FlatButton(
                    onPressed: () {
                      print('to reroute to new screen');
                    },
                    color: Colors.amber[500],
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'Todo-App',
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
