import 'package:flutter/material.dart';

import '../components/down_container.dart';

class ProductDetailPage extends StatelessWidget {
  final Map<String, Object> product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: Column(
        children: [
          Text(
            product['title'] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(product['imageUrl'] as String, height: 300,),
          ),
          const Spacer(
            flex: 2,
          ),
          DownContainer(product: product)
        ],
      ),
    );
  }
}

