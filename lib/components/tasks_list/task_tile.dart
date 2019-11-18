import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/stores/task_store.dart';

typedef void TOnChange(bool val);

class TaskTile extends StatelessWidget {
  final Task task;

  TaskTile({
    @required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskStore>(
      builder: (context, taskData, child) => ListTile(
        onLongPress: () {
          taskData.removeTask(task);
        },
        title: Text(
          task.name,
          style: TextStyle(
            decoration: task.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: task.isDone,
          onChanged: (bool isChecked) {
            taskData.toggleIsDone(task);
          },
        ),
      ),
    );
  }
}
