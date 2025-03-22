import 'package:flutter/material.dart';
import 'package:todoey/const.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function checkBoxToggle;

  const TaskTile(
      {super.key,
      required this.taskName,
      required this.isChecked,
      required this.checkBoxToggle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: kAppColor,
        value: isChecked,
        onChanged: (newValue) {
          checkBoxToggle;
        },
      ),
    );
  }
}
