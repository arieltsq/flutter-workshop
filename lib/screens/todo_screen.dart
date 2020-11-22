import 'package:flutter/material.dart';

class ToDoListScreen extends StatefulWidget {
  static String id = 'todo_list_screen';
  @override
  _ToDoListScreenState createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo List")),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Items to do: 3',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 55.0,
                    )),
                Text('To do:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                    )),
                ListTile(
                  onLongPress: null,
                  title: Text(
                    'to buy eggs',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  trailing: Checkbox(
                    activeColor: Colors.black,
                    value: false,
                    onChanged: null,
                  ),
                ),
                ListTile(
                  onLongPress: null,
                  title: Text(
                    'to buy milk',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  trailing: Checkbox(
                    activeColor: Colors.black,
                    value: true,
                    onChanged: null,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
