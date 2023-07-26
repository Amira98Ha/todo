import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget {

 final bool isChecked;
 final String TaskTitle;
 final void Function(bool?) CheckBocChange;
 final void Function() ListTileDelete;

 TaskTile({required this.isChecked, required this.TaskTitle, required this.CheckBocChange, required this.ListTileDelete});

  @override
  Widget build(BuildContext context) {
  return ListTile(
  title:
  Text(
  TaskTitle,
  style: TextStyle(
  decoration: isChecked ?
  TextDecoration.lineThrough : null
  ),),
  trailing: Checkbox(
    activeColor: Colors.green,
    value: isChecked,
    onChanged: CheckBocChange,
  ),
   onLongPress: ListTileDelete,
  );
  }

}


