import 'package:flutter/material.dart';
import 'package:flutter_workshop/screens/todo_screen.dart';

class InitialScreen extends StatelessWidget {
  static String id = 'initial_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Navigator.pushNamed(context, ToDoListScreen.id);
                  },
                  color: Colors.amber[500],
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Todo-App',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
