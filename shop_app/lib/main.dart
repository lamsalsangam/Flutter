import 'package:flutter/material.dart';
import 'package:shop_app/screen/my_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home Shop",
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "BarlowCondensed",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(31, 45, 31, 1),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            fontSize: 16,
          ),
          prefixIconColor: Color.fromRGBO(31, 45, 31, 1)
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          )
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
