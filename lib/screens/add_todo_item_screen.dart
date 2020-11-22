import 'package:flutter/material.dart';

class AddTodoItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newItemTitle;
    return Container(
        child: Container(
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.yellow[100],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('Add Items',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 55.0,
              )),
          TextFormField(
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newItemTitle = newText;
            },
          ),
          SizedBox(height: 20.0),
          FlatButton(
            onPressed: () {
              print('Todo new: $newItemTitle');
              Navigator.pop(context);
            },
            color: Colors.black,
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
