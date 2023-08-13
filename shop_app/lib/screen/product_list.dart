import 'package:flutter/material.dart';
import 'package:shop_app/components/filter_bar.dart';
import 'package:shop_app/components/product_section.dart';

import '../components/header.dart';


class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Header(),
          FilterBar(),
          ProductSection(),
        ],
      ),
    );
  }
}