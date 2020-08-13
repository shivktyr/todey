import 'package:flutter/material.dart';
import 'screens/tasksScreen.dart';
import 'package:provider/provider.dart';
import 'provider/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreens(),
      ),
    );
  }
}
