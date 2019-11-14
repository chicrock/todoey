import 'package:flutter/material.dart';

typedef void TOnChange(bool val);

class TaskCheckbox extends StatelessWidget {
  final bool isChecked;
  final TOnChange onChanged;

  TaskCheckbox({
    @required this.isChecked,
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: onChanged,
    );
  }
}
