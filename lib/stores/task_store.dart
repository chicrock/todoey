import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskStore extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String name) {
    _tasks.add(Task(name: name));

    notifyListeners();
  }

  void toggleIsDone(Task task) {
    task.toggleDone();

    notifyListeners();
  }

  void removeTask(Task task) {
//    int taskIndex = _tasks.indexOf(task);
//    _tasks.removeAt(taskIndex);
    _tasks.remove(task);

    notifyListeners();
  }
}
