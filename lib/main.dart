import 'package:flutter/material.dart';
import 'package:flutter_workshop/screens/initial_screen.dart';
import 'package:flutter_workshop/screens/todo_screen.dart';

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
        initialRoute: InitialScreen.id,
        routes: {
          ToDoListScreen.id: (context) => ToDoListScreen(),
          InitialScreen.id: (context) => InitialScreen(),
        });
  }
}
