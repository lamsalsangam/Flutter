import 'package:flutter/material.dart';
import 'package:shop_app/data/global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartItem = cart[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cartItem['imageUrl'] as String),
              radius: 30,
            ),
            title: Text(
              cartItem["title"].toString(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            subtitle: cartItem.containsKey('size')
                ? Text("Size: ${cartItem["size"]}")
                : const SizedBox(
                    height: 5,
                  ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
