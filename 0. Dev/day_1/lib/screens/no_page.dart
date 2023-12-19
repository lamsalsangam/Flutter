import 'package:flutter/material.dart';

class NoPageFoundPage extends StatelessWidget {
  const NoPageFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invalid Page'),
      ),
      body: const Center(
        child: Text('The provided ID leads to an invalid or out-of-range page.'),
      ),
    );
  }
}
