import 'package:flutter/material.dart';
import 'package:todo_app/components/task-tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  final bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TaskTile(
        isCompleted: isCompleted,
      ),
    );
  }
}
