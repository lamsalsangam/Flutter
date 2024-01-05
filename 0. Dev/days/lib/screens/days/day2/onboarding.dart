import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingStep {
  late IconData icon;
  late String title;
  late String description;

  OnboardingStep({
    required this.icon,
    required this.title,
    required this.description,
  });
}

final onboardingSteps = [
  OnboardingStep(
    icon: Icons.snowing,
    title: "Learn ReactNative",
    description: "Learning the react native for gaining knowledge.",
  ),
  OnboardingStep(
    icon: Icons.currency_exchange,
    title: "Grow more",
    description:
        "Learning never ends; the more you know, the more there is to know.",
  ),
  OnboardingStep(
    icon: Icons.arrow_upward_rounded,
    title: "Endless Possibilities",
    description:
        "Jack of all trades, master of none, but still is better than a master of one.",
  ),
];

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return const Scaffold(
      backgroundColor: Color(0xFF15141A),
      body: SafeArea(
        child: OnBoardScreen(),
      ),
    );
  }
}

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  int screenIndex = 0;

  void endOnboarding() {
    Navigator.pop(context); // Assuming you want to navigate back on completion
  }

  void onContinue() {
    if (screenIndex == onboardingSteps.length - 1) {
      endOnboarding();
    } else {
      setState(() {
        screenIndex++;
      });
    }
  }

  void onBack() {
    if (screenIndex == 0) {
      endOnboarding();
    } else {
      setState(() {
        screenIndex--;
      });
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    final data = onboardingSteps[screenIndex];

    return Column(
      children: [
        SizedBox(height: 10.0, child: buildStepIndicator()),
        Expanded(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! > 0) {
                onBack();
              } else if (details.primaryVelocity! < 0) {
                onContinue();
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Icon(
                      data.icon,
                      size: 100,
                      color: const Color(0xFFCEF202),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.title,
                        style: const TextStyle(
                          color: Color(0xFFFDFDFD),
                          fontWeight: FontWeight.w900,
                          fontSize: 50,
                          letterSpacing: 1.3,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        data.description,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: onBack,
                            child: const Text(
                              "Skip",
                              style: TextStyle(
                                color: Color(0xFFFDFDFD),
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: onContinue,
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
            ),
          ),
        ),
      ],
    );
  }

  Row buildStepIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: onboardingSteps.map((step) {
        int index = onboardingSteps.indexOf(step);
        return Container(
          width: 25,
          height: 2,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            color: index == screenIndex ? const Color(0xFFCEF202) : Colors.grey,
          ),
        );
      }).toList(),
    );
  }
}
