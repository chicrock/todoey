import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/task_screen.dart';
import 'package:todoey/stores/task_store.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskStore(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
