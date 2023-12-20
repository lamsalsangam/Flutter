import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'onboarding.dart';

class Day2Screen extends StatefulWidget {
  final int day;

  const Day2Screen({super.key, required this.day});

  @override
  State<Day2Screen> createState() => _Day2ScreenState();
}

class _Day2ScreenState extends State<Day2Screen> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    int day = widget.day;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Day Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Day$day Details Screen',
            style: GoogleFonts.amaticSc(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _isPressed = true; // trigger animation
                });

                Future.delayed(const Duration(milliseconds: 150), () {
                  setState(() {
                    _isPressed = false; // reset animation
                  });
                });

                // Your action goes here

                // Example: Navigate to another screen
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const OnboardingScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: _isPressed ? Colors.black : Colors.black26,
                foregroundColor: Colors.white,
              ),
              child: const Text("Go to Onboarding site"),
            ),
          ),
        ],
      ),
    );
  }
}

// Example of another screen

