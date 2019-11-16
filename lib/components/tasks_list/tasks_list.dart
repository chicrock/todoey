import 'package:flutter/material.dart';
import 'package:todoey/components/tasks_list/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy egg'),
  ];

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
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          task: tasks[index],
          onChanged: (bool isChecked) {
            setState(() {
              tasks[index].setIsChecked(isChecked);
            });
          },
        );
      },
    );
  }
}
