import 'package:flutter/material.dart';

import '../screens/days/day1/day_1.dart';
import '../screens/days/day2/day_2.dart';
import '../screens/days/day3/day_3.dart';
import '../screens/no_page.dart';

Widget getDayRoute(int id) {
  if (id < 1 || id > 24) {
    return const NoPageFoundPage();
  }

  switch (id) {
    case 1:
      return const Day1Screen(day: 1);
    case 2:
      return const Day2Screen(day: 2);
    case 3:
      return const Day3Screen(day:3);
    default:
      return const NoPageFoundPage();
  }
}
