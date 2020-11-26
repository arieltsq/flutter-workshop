import 'package:flutter/material.dart';
import 'package:flutter_workshop/models/item_data.dart';
import 'item_tile.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          final item = ItemData().items[index];
          return ItemTile(
              text: item.name,
              isChecked: item.isDone,
              checkboxCallback: (bool checkBoxState) {
                print('hello $index and checkbox state is $checkBoxState');
                ItemData.updateItem(item);
              });
        },
        itemCount: ItemData.itemCount);
  }
}
