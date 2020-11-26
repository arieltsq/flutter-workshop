import 'item.dart';
import 'dart:collection';

class ItemData {
  static List<Item> itemList = [
    Item(name: 'Buy milk'),
    Item(name: 'Buy eggs'),
  ];

  UnmodifiableListView<Item> get items {
    return UnmodifiableListView(itemList);
  }

  void addItem(String newItemName) {
    final item = Item(name: newItemName);
    itemList.add(item);
  }

  static void updateItem(Item item) {
    print('triggered $item');
    item.toggleDone();
  }

  static int get itemCount {
    return itemList.length;
  }
}
