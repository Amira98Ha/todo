import 'package:flutter/material.dart';
import 'package:todo/model/task.dart';


class TaskData extends ChangeNotifier{
  List<Task> tasks=[];


  void addTask(String NewTaskTitle) {
    tasks.add(Task(name: NewTaskTitle));
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.TaskDone();
    notifyListeners();
  }

}