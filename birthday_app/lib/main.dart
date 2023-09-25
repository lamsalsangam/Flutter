import 'package:flutter/material.dart';

import 'data/fake-data.dart';

int daysUntilNextBirthday(DateTime birthDate) {
  final today = DateTime.now();
  final nextBirthday = DateTime(today.year, birthDate.month, birthDate.day);
  return nextBirthday.isBefore(today)
      ? nextBirthday.add(const Duration(days: 365)).difference(today).inDays
      : nextBirthday.difference(today).inDays;
}

void main() {
  fakeData.sort((a, b) {
    final aBirthday = DateTime.parse(a["dateOfBirth"]!);
    final bBirthday = DateTime.parse(b["dateOfBirth"]!);
    return daysUntilNextBirthday(aBirthday)
        .compareTo(daysUntilNextBirthday(bBirthday));
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Your Day",
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Set horizontal scroll
              child: Row(
                children: [
                  for (int index = 0; index < fakeData.length; index++)
                    _buildProfileCard(index),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileCard(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(10),
        ),
        width: 200, // Set a fixed width for each card
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 40,
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              fakeData[index]["name"]!,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
