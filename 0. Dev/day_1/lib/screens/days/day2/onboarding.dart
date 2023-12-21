import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF15141A),
      body: SafeArea(
        child: OnBoardScreen1(),
      ),
    );
  }
}

class OnBoardScreen1 extends StatelessWidget {
  const OnBoardScreen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Center(
            child: Icon(
              Icons.currency_exchange,
              size: 100,
              color: Color(0xFFCEF202),
            ),
          ),
          const SizedBox(height: 30),
          // Add vertical space between icon and text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Track Every Transaction",
                style: TextStyle(
                  color: Color(0xFFFDFDFD),
                  fontWeight: FontWeight.w900,
                  fontSize: 50,
                  letterSpacing: 1.3,
                ),
              ),
              const SizedBox(height: 15),
              // Add space between title and description
              const Text(
                "Monitor your spending and contribution, ensuring every penny aligns with your family's aspirations.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 40),
              // Add vertical space before buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        color: Color(0xFFFDFDFD),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  // Add horizontal space between buttons
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF302E28),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 75.0,
                        vertical: 15.0,
                      ),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: Color(0xFFFDFDFD),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
