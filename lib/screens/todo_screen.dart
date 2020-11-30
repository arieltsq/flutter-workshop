import 'package:flutter/material.dart';
import 'package:flutter_workshop/components/add_todo_modal.dart';
import 'package:flutter_workshop/models/item_data.dart';
import 'package:flutter_workshop/widgets/item_list.dart';
import 'package:provider/provider.dart';

class ToDoListScreen extends StatefulWidget {
  static String id = 'todo_list_screen';
  @override
  _ToDoListScreenState createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  int itemsIndex = ItemData().itemCount;
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
                Text('Items to do: ${Provider.of<ItemData>(context).itemCount}',
                    style: Theme.of(context).textTheme.headline6),
                Text('To do:', style: Theme.of(context).textTheme.subtitle1),
                Expanded(child: SizedBox(height: 200.0, child: ItemList())),
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
