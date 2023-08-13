import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/data/global_variables.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
            title: product['title'] as String,
            price: product['price'] as double,
            image: product['imageUrl'] as String,
            backgroundColor: index.isEven? const Color.fromRGBO(255, 246, 224, 1): const Color.fromRGBO(233, 248, 249, 1),
          );
        },
      ),
    );
  }
}
