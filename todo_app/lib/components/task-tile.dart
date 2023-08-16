import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  TaskTile({super.key, required this.isCompleted});

  late bool isCompleted;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("Complete this project"),
      trailing: Checkbox(
        value: widget.isCompleted,
        onChanged: (value) {
          setState(() {
            widget.isCompleted = value!;
          });
        },
      ),
    );
  }
}
