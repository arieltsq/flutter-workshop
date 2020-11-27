import 'package:flutter/cupertino.dart';
import 'item.dart';
import 'dart:collection';

class ItemData extends ChangeNotifier {
  List<Item> itemList = [
    Item(name: 'Buy milk'),
    Item(name: 'Buy eggs'),
  ];

  UnmodifiableListView<Item> get items {
    return UnmodifiableListView(itemList);
  }

  void addItem(String newItemName) {
    final item = Item(name: newItemName);
    itemList.add(item);
    // after adding provider and all, remember to add listener to get updated on changes
    notifyListeners();
  }

  void updateItem(Item item) {
    item.toggleDone();
    notifyListeners();
  }

  int get itemCount {
    return itemList.length;
  }

  void deleteItem(Item item) {
    itemList.remove(item);
    notifyListeners();
  }
}
