import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/data.dart';

import 'task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, Data, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskName: Data.tasks[index].name,
              isChecked: Data.tasks[index].isDone,
              checkBoxToggle: () {
                Data.taskToggle(index);
              },
            );
          },
          itemCount: Data.itemCount,
        );
      },
    );
  }
}
