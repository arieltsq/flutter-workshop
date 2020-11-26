import 'package:flutter/material.dart';
import 'package:flutter_workshop/models/item_data.dart';
import 'package:provider/provider.dart';

class AddTodoModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newItemTitle;
    return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Add Items',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6),
              TextFormField(
                style: Theme.of(context).textTheme.bodyText2,
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
                  // back to add provider to listen to item being add to the list | itemData
                  Provider.of<ItemData>(context, listen: false)
                      .addItem(newItemTitle);
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
