import 'package:flutter/foundation.dart';
import 'package:todey/models/taskModel.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Buy Milk'),
    Task(title: 'Buy Eggs'),
    Task(title: 'Eat Fruits'),
  ];

  List<Task> get tasks {
    return [..._tasks];
  }

  int get taskLength {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(title: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toogleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
