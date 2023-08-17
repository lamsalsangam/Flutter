import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.isCompleted,
    required this.taskTitle,
    required this.onChanged,
    required this.onDelete,
  });

  final bool isCompleted;
  final String taskTitle;
  final ValueChanged<bool?> onChanged;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isCompleted ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isCompleted,
        onChanged: onChanged,
      ),
      onLongPress: onDelete,
    );
  }
}
