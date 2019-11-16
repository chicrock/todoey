import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

typedef void TOnChange(bool val);

class TaskTile extends StatelessWidget {
  final Task task;
  final TOnChange onChanged;

  TaskTile({
    @required this.task,
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isDone,
        onChanged: onChanged,
      ),
    );
  }
}
