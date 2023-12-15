import 'package:flutter/material.dart';

import 'day_list_item.dart';

class DayList extends StatelessWidget {
  final List<int> days = List.generate(24, (index) => index + 1);

  DayList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: days.length,
      itemBuilder: (context, index) {
        return DayListItem(day: days[index]);
      },
    );
  }
}