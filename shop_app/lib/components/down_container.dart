import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Provider/cart_provider.dart';

class DownContainer extends StatefulWidget {
  const DownContainer({
    super.key,
    required this.product,
  });

  final Map<String, Object> product;

  @override
  State<DownContainer> createState() => _DownContainerState();
}

class _DownContainerState extends State<DownContainer> {
  late int selectedSize;
  bool isSizeSelected = false;

  void onTap() {
    if (widget.product.containsKey('sizes') && !isSizeSelected) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a size.'),
        ),
      );
      return;
    }

    Provider.of<CartProvider>(context, listen: false).addProduct({
      'id': widget.product['id'],
      'title': widget.product['title'],
      'price': widget.product['price'],
      'imageUrl': widget.product['imageUrl'],
      'category': widget.product['category'],
      if (widget.product.containsKey('sizes')) 'size': selectedSize,
    });

    // Add the closing parenthesis
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Product added successfully.'),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    selectedSize = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(108, 123, 149, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(
              "रू ${widget.product['price']}",
              style: const TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w600,
                fontSize: 35,
              ),
            ),
            const SizedBox(height: 10),
            if (widget.product.containsKey('sizes'))
              OptionalSizes(
                sizesList: widget.product['sizes'] as List<int>,
                selectedSize: selectedSize,
                onSizeSelected: (size) {
                  setState(() {
                    selectedSize = size;
                    isSizeSelected = true; // Mark size as selected
                  });
                },
              ),
            const Spacer(flex: 1),
            ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white70,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Add to Cart",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionalSizes extends StatelessWidget {
  const OptionalSizes({
    super.key,
    required this.sizesList,
    required this.selectedSize,
    required this.onSizeSelected,
  });

  final List<int> sizesList;
  final int selectedSize;
  final void Function(int) onSizeSelected;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: sizesList.isNotEmpty,
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: sizesList.length,
          itemBuilder: (context, index) {
            final size = sizesList[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  onSizeSelected(size);
                },
                child: Chip(
                  label: Text(
                    size.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: selectedSize == size
                          ? Theme.of(context).colorScheme.onPrimary
                          : const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  backgroundColor: selectedSize == size
                      ? const Color.fromRGBO(10, 77, 104, 1)
                      : const Color.fromRGBO(245, 247, 249, 1),
                  elevation: 2,
                  shadowColor: Colors.grey,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
