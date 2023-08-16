import 'package:flutter/material.dart';

import '../classes/task_definition.dart';


class TaskData extends ChangeNotifier{
  List<Task> tasks= [];

  void addTask(String title){
    tasks.add(Task(title));
    notifyListeners();
  }

  void toggleTaskCompletion(int index){
    tasks[index].isCompleted=!tasks[index].isCompleted;
    notifyListeners();
  }

  void deleteTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }
}