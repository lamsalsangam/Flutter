import 'package:flutter/material.dart';

import '../screens/days/day1/day_1.dart';
import '../screens/no_page.dart';


Widget getDayRoute(int id) {
  if (id < 1 || id > 24) {
    return const NoPageFoundPage();
  }

  switch (id) {
    case 1:
      return const Day1Screen(day: 1);
  // case 2:
  //   return Day2Screen(day:2);
    default:
      return const NoPageFoundPage();
  }
}