import 'package:flutter/material.dart';
import 'dart:math';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    "Home",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    children: [
                      Transform.rotate(
                        angle: 90 * pi / 90,
                        child: const Icon(
                          Icons.air_outlined,
                          size: 30,
                          color: Colors.lightGreen,
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                      const Icon(
                        Icons.shopping_cart,
                        size: 35,
                        color: Colors.lightGreen,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Expanded(
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(60)),
                borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1)),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(60),
                  ),
                  borderSide:
                      BorderSide(color: Color.fromRGBO(70, 50, 255, 0.5))),
              prefixIcon: Icon(Icons.search),
              hintText: "Search",
            ),
          ),
        ),
      ],
    );
  }
}
