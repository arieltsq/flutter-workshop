import 'package:flutter/material.dart';
import 'package:flutter_workshop/models/item_data.dart';
import 'item_tile.dart';
import 'package:provider/provider.dart';

class ItemList extends StatefulWidget {
  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  _showMaterialDialog(String itemTitle) {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              title: new Text("Note"),
              content: new Text("Todo - $itemTitle is deleted",
                  style: Theme.of(context).textTheme.bodyText2),
              actions: <Widget>[
                Center(
                  child: FlatButton(
                    color: Colors.black,
                    child: Text('Continue',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        )),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemData>(builder: (context, itemData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final item = itemData.items[index];
          return ItemTile(
              text: item.name,
              isChecked: item.isDone,
              checkboxCallback: (bool checkBoxState) {
                print('hello $index and checkbox state is $checkBoxState');
                itemData.updateItem(item);
              },
              longPressCallback: () {
                itemData.deleteItem(item);
                _showMaterialDialog(item.name);
              });
        },
        itemCount: itemData.itemCount,
      );
    });
  }
}
