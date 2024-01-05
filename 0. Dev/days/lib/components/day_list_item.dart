import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayListItem extends StatelessWidget {
  final int day;

  const DayListItem({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF9EDE3),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFF9B4521),
          width: 0.01,
        ),
      ),
      child: Center(
        child: Text(
          day.toString(),
          style: GoogleFonts.amaticSc(
            fontSize: 75,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF9B4521),
          ),
        ),
      ),
    );
  }
}
