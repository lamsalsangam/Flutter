import 'package:flutter/material.dart';

class TotalBalance extends StatelessWidget {
  final double totalExpenses;

  const TotalBalance({
    super.key,
    required this.totalExpenses,
  });

  double get totalBalance => 30000.00 - totalExpenses;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(
              colors: [Colors.amberAccent, Colors.deepPurple],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              tileMode: TileMode.clamp,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Total Balance",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
            Text(
              totalBalance.toString(),
              style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
            // Add other widgets related to total balance here
          ],
        ),
      ),
    );
  }
}
