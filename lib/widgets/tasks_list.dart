import 'package:flutter/material.dart';
import 'package:todo/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo/model/task_data.dart';
class TasksList extends StatelessWidget {

  Widget build(BuildContext context) {

    return Consumer<TaskData>(
      builder: (context, TaskData,child)
    {

      return ListView.builder(
        itemCount: TaskData.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: TaskData.tasks[index].isDone,
            TaskTitle: TaskData.tasks[index].name,
            CheckBocChange: (newValue) {
              TaskData.updateTask(TaskData.tasks[index]);
            },
            ListTileDelete: () {
              TaskData.deleteTask(TaskData.tasks[index]);
            },

          );
        },
      );

      },

    );
  }
}
