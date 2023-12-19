import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Day1Screen extends StatelessWidget {
  final int day;

  const Day1Screen({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Day Details'),
      ),
      body: Text(
        'Day$day Details Screen',
        style: GoogleFonts.amaticSc(
          fontSize: 50,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }
}
