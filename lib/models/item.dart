class Item {
  final String name;
  bool isDone;

  // to set isDone to false by default if no value is pass in
  Item({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
