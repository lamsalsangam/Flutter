import 'package:flutter/material.dart';

import 'data/fake_data.dart';

int daysUntilNextBirthday(DateTime birthDate) {
  final today = DateTime.now();
  final nextBirthday = DateTime(today.year, birthDate.month, birthDate.day);
  return nextBirthday.isBefore(today)
      ? nextBirthday.add(const Duration(days: 365)).difference(today).inDays
      : nextBirthday.difference(today).inDays;
}

void main() {
  fakeData.sort((a, b) {
    final aBirthday = DateTime.parse(a["dateOfBirth"]);
    final bBirthday = DateTime.parse(b["dateOfBirth"]);
    return daysUntilNextBirthday(aBirthday)
        .compareTo(daysUntilNextBirthday(bBirthday));
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();

    final upcomingBirthdays = fakeData
        .where((person) {
      final birthday = DateTime.parse(person["dateOfBirth"]);
      final daysUntilBirthday = birthday.isBefore(today)
          ? birthday.add(const Duration(days: 365)).difference(today).inDays
          : birthday.difference(today).inDays;
      return daysUntilBirthday <= 90; // Consider birthdays within 90 days
    })
        .toList();

    final closestBirthdays = upcomingBirthdays.isNotEmpty
        ? upcomingBirthdays.sublist(0, upcomingBirthdays.length >= 3 ? 3 : upcomingBirthdays.length)
        : [];

    final todayBirthdays = fakeData.where((person) {
      final birthday = DateTime.parse(person["dateOfBirth"]);
      return birthday.month == today.month && birthday.day == today.day;
    }).toList();

    final cards = todayBirthdays.isNotEmpty
        ? todayBirthdays
        : closestBirthdays.isNotEmpty ? closestBirthdays : [];

    return MaterialApp(
      title: "Your Day",
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Do make a Wish",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: cards
                      .map((card) => Padding(
                    padding: const EdgeInsets.all(8.0), // Add padding between cards
                    child: _buildProfileCard(card),
                  ))
                      .cast<Widget>()
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileCard<T>(T person) {
    final name = (person as Map<String, dynamic>)['name']?.toString();

    return Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 380,
      height: 200,
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
            name ?? 'Unknown',
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}