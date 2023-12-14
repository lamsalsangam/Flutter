import 'package:flutter/material.dart';

List<int> days = [...List.generate(24, (index) => index + 1)];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "React Native <-> Flutter",
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: days.map((day) => Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF9EDE3),
                border: Border.all(
                  color: const Color(0xFF9B4521),
                  width: 0.05
                ),
                  borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  '$day',
                  style: const TextStyle(
                    color: Color(0xFF9B4521),
                    fontSize: 50,
                  ),
                ),
              ),
            )).toList(),
          ),
        ),
      ),
    );
  }
}
