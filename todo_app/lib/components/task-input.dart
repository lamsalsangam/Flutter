import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/task_data.dart';

class TaskInput extends StatefulWidget {
  const TaskInput({super.key});

  @override
  State<TaskInput> createState() => _TaskInputState();
}

class _TaskInputState extends State<TaskInput> {
  String newTaskTitle = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter your task...",
              prefixIcon: const Icon(Icons.book_outlined),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey.shade900),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey),
              ),
            ),
            onChanged: (newText) {
              setState(() {
                newTaskTitle = newText;
              });
            },
          ),
        ),
        IconButton(
          onPressed: () {
            if (newTaskTitle.isNotEmpty) {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle);
              setState(() {
                newTaskTitle = "";
              });
            }
          },
          icon: const Icon(Icons.push_pin_outlined),
        ),
      ],
    );
  }
}
