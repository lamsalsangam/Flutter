import 'package:day_1/screens/day_details.dart';
import 'package:day_1/screens/day_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calendar",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: "/listing",
      routes: {
        "/listing": (context) => DayList(),
        "/day/:id": (context) {
          final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
          final int id = arguments['id'] as int;
          return DayDetails(day: id);
        },
      },
    );
  }
}
