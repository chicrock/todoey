import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/tasks_list/task_tile.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/stores/task_store.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return ListView(
//      padding: EdgeInsets.symmetric(horizontal: 20.0),
//      children: tasks.map(
//        (task) {
//          return TaskTile(task: task);
//        },
//      ).toList(),
//    );
    return Consumer<TaskStore>(
      builder: (context, taskStore, child) => ListView.builder(
        itemCount: taskStore.taskCount,
        itemBuilder: (context, index) {
          Task task = taskStore.tasks[index];

          return TaskTile(
            task: task,
          );
        },
      ),
    );
  }
}
