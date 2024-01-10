import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationDay4Screen extends StatefulWidget {
  const AnimationDay4Screen({super.key});

  @override
  State<AnimationDay4Screen> createState() => _AnimationDay4ScreenState();
}

class _AnimationDay4ScreenState extends State<AnimationDay4Screen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset(
          "assets/netflix.json",
          controller: _controller,
          onLoaded: (composition) {
            _controller
              ..duration = composition.duration
              ..forward()
              ..repeat();
          },
        ),
      ),
    );
  }
}
