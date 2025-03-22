import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class Data extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Get meat"),
    Task(name: "Buy milk"),
  ];

  int get itemCount {
    return tasks.length;
  }

  void appendTask(Task t) {
    tasks.add(t);
    notifyListeners();
  }

  void taskToggle(index) {
    tasks[index].toggleDone();
    notifyListeners();
  }
}
