import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class Data extends ChangeNotifier {
  final List<Task> _tasks = [];

  int get itemCount {
    return _tasks.length;
  }

  List<Task> get tasks {
    return _tasks;
  }

  void appendTask(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void taskToggle(Task toggledTask) {
    toggledTask.toggleDone();
    notifyListeners();
  }
}
