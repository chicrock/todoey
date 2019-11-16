import 'package:flutter/material.dart';
import 'package:todoey/components/tasks_list/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({@required this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
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
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          task: widget.tasks[index],
          onChanged: (bool isChecked) {
            setState(() {
              widget.tasks[index].setIsChecked(isChecked);
            });
          },
        );
      },
    );
  }
}
