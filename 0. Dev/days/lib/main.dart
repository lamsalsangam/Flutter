import 'package:days/screens/day_list.dart';
import 'package:days/screens/not_found.dart';
import 'package:flutter/material.dart';

import 'lib/switching_page.dart';

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
          final Map arguments =
              ModalRoute.of(context)!.settings.arguments as Map;

          if (!arguments.containsKey('id') ||
              (arguments['id'] as int?) == null) {
            return const NotFoundPage();
          }

          final int id = arguments['id'] as int;
          return getDayRoute(id);
        }
      },
    );
  }
}
