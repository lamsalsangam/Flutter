import 'package:flutter/material.dart';

class DownContainer extends StatelessWidget {
  const DownContainer({
    super.key,
    required this.product,
  });

  final Map<String, Object> product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(108, 123, 149, 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0))),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(
              "रू ${product['price']}",
              style: const TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w600,
                  fontSize: 35),
            ),
            const SizedBox(
              height: 10,
            ),
            OptionalSizes(product: product),
            const Spacer(flex: 1,),
            ElevatedButton(
              onPressed: () {
                // Implement your logic for the button's onPressed event.
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                minimumSize: const Size(double.infinity, 50)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white70,
                  ),
                  SizedBox(width: 8), // Add some spacing between icon and text
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

class OptionalSizes extends StatefulWidget {
  const OptionalSizes({
    super.key,
    required this.product,
  });

  final Map<String, Object> product;

  @override
  State<OptionalSizes> createState() => _OptionalSizesState();
}

class _OptionalSizesState extends State<OptionalSizes> {
  late String selectedSize;

  @override
  void initState() {
    super.initState();
    selectedSize = (widget.product['sizes'] as List<int>?)?.first.toString() ??
        ''; // Initialize selectedSize with the first size
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.product.containsKey('sizes') &&
          (widget.product['sizes'] as List<int>?)?.isNotEmpty == true,
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: (widget.product["sizes"] as List<int>?)?.length ?? 0,
          itemBuilder: (context, index) {
            final sizesList = widget.product["sizes"] as List<int>?;
            if (sizesList != null && index < sizesList.length) {
              final size = sizesList[index];

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = size.toString();
                    });
                  },
                  child: Chip(
                    label: Text(
                      size.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: selectedSize == size.toString()
                            ? Theme.of(context).colorScheme.onPrimary
                            : const Color.fromRGBO(0, 0, 0, 1), // Text color
                      ),
                    ),
                    backgroundColor: selectedSize == size.toString()
                        ? const Color.fromRGBO(10, 77, 104, 1)
                        : const Color.fromRGBO(245, 247, 249, 1),
                    // Chip background color
                    elevation: 2,
                    shadowColor: Colors.grey,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              );
            } else {
              return const SizedBox(
                width: 10,
              );
            }
          },
        ),
      ),
    );
  }
}
