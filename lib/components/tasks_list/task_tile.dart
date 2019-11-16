import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

typedef void TOnChange(bool val);

class TaskTile extends StatelessWidget {
  final Task task;

  TaskTile({@required this.task});

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
        onChanged: (bool isDone) {
          task.toggleDone();
        },
      ),
    );
  }
}
