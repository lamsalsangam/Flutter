import 'package:flutter/material.dart';
import 'package:expense_app/data.dart'; // Assuming you have the correct import path for your data

import '../components/total_balance.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalExpenses = 0;
    for (var expense in expenditure) {
      totalExpenses += (expense["expenses"] as num).toDouble();
    }
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            TotalBalance(totalExpenses: totalExpenses),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: expenditure.length,
              itemBuilder: (context, index) {
                final expense = expenditure[
                    index]; // Assuming each item is an expense object
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.shopping_bag_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$${expense['expenses']}",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "${expense['date']}",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "${expense['product']}",
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
