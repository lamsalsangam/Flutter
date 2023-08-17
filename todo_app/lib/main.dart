import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/provider/task_data.dart';
import 'package:todo_app/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'To-Do App',
        theme: ThemeData.dark(useMaterial3: true),
        home: const MyHomePage(title: 'To-Do List'),
      ),
    );
  }
}
