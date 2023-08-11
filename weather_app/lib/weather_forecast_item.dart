import 'dart:ui';

import 'package:flutter/material.dart';

class ScrollRow extends StatelessWidget {
  const ScrollRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SubCard(),
          SubCard(),
          SubCard(),
          SubCard(),
          SubCard(),
          SubCard(),
        ],
      ),
    );
  }
}

class SubCard extends StatelessWidget {
  const SubCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
        width: 100.0,
        padding: const EdgeInsets.all(8.0),
        child: const Column(
          children: [
            Text(
              "9:00",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Icon(
              Icons.cloud,
              size: 32,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "320 K",
            )
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String header;

  const Header({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        header,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    "301 K",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Icon(
                    Icons.cloud,
                    size: 72,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Rain",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
