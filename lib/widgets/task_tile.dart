import 'package:flutter/material.dart';
import 'package:todoey/const.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function checkBoxToggle;
  final Function deleteTask;

  const TaskTile({
    super.key,
    required this.taskName,
    required this.isChecked,
    required this.checkBoxToggle,
    required this.deleteTask,
  });

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
          checkBoxToggle();
        },
      ),
      onLongPress: () {
        deleteTask();
      },
    );
  }
}
