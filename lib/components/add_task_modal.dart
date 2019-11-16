import 'package:flutter/material.dart';

class AddTaskModal extends StatelessWidget {
  final Function onAddTask;
  final textController = TextEditingController();

  String newTasks;

  AddTaskModal({@required this.onAddTask});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "ADD TASKS",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              controller: textController,
              textAlign: TextAlign.center,
              onChanged: (String newVal) {
                newTasks = newVal;
              },
            ),
            FlatButton(
              child: Text(
                "ADD",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
//                onAddTask(textController.value.text);
                onAddTask(newTasks);
                textController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
