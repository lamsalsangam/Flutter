import 'package:flutter/material.dart';

class Day4Screen extends StatelessWidget {
  final int day;
  const Day4Screen({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day $day Animation"),
      ),
    );
  }
}
