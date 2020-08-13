import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isDone;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function longPressCallBack;

  TaskTile(
      {this.taskTitle,
      this.isDone,
      this.checkBoxCallBack,
      this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isDone,
        onChanged: checkBoxCallBack,
      ),
      onLongPress: longPressCallBack,
    );
  }
}
