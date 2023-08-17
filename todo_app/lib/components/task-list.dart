import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/components/task-tile.dart';
import 'package:todo_app/provider/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: Provider.of<TaskData>(context).tasks.length,
        itemBuilder: (context, index) {
          final task = Provider.of<TaskData>(context).tasks[index];
          return TaskTile(
            isCompleted: task.isCompleted,
            taskTitle: task.title,
            onChanged: (bool? value) {
              Provider.of<TaskData>(context, listen: false)
                  .toggleTaskCompletion(index);
            },
            onDelete: () {
              Provider.of<TaskData>(context, listen: false).deleteTask(index);
            },
          );
        },
      ),
    );
  }
}
