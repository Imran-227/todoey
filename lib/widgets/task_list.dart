import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/data.dart';

import 'task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, data, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskName: data.tasks[index].name,
              isChecked: data.tasks[index].isDone,
              checkBoxToggle: () {
                data.taskToggle(data.tasks[index]);
              },
              deleteTask: () {
                data.removeTask(data.tasks[index]);
              },
            );
          },
          itemCount: data.itemCount,
        );
      },
    );
  }
}
