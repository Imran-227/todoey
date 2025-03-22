import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/const.dart';

import '../models/data.dart';
import '../models/task.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String taskName = "null";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kMyPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "New task",
            textAlign: TextAlign.center,
            style: TextStyle(color: kAppColor, fontSize: kFontSize),
          ),
          TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.text,
            showCursor: true,
            autofocus: true,
            onChanged: (value) {
              taskName = value;
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          FilledButton(
              onPressed: () {
                Provider.of<Data>(context).appendTask(Task(name: taskName));
                Navigator.pop(context);
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(kAppColor)),
              child: const Text(
                "Add task",
              ))
        ],
      ),
    );
  }
}
