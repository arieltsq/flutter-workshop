import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final String text;
  final bool isChecked;
  final Function checkboxCallback;

  ItemTile({this.text, this.isChecked, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          fontSize: Theme.of(context).textTheme.bodyText2.fontSize,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.black,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
