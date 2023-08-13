import 'package:flutter/material.dart';
import 'package:shop_app/components/filter_bar.dart';
import 'package:shop_app/components/product_section.dart';

import '../components/header.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            FilterBar(),
            ProductSection(),
          ],
        ),
      ),
    );
  }
}