import 'package:flutter/material.dart';
import 'package:flutter_workshop/components/add_todo_modal.dart';
import 'package:flutter_workshop/models/item.dart';
import 'package:flutter_workshop/widgets/item_list.dart';

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
                    style: Theme.of(context).textTheme.headline6),
                Text('To do:', style: Theme.of(context).textTheme.subtitle1),
                SizedBox(height: 200.0, child: ItemList()),
                Center(
                  child: FloatingActionButton(
                      onPressed: () {
                        print('add button triggered');

                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => AddTodoModal());
                      },
                      child: Icon(Icons.add)),
                ),
              ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
