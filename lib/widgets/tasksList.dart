import 'package:flutter/material.dart';
import 'package:todey/widgets/taskTile.dart';
import 'package:provider/provider.dart';
import 'package:todey/provider/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.title,
              isDone: task.isDone,
              checkBoxCallBack: (checkBoxStatus) {
                taskData.updateTask(task);
              },
              longPressCallBack: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskLength,
        );
      },
    );
  }
}
