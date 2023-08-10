import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Refresh");
            },
            icon: const Icon(
              Icons.refresh_outlined,
            ),
          ),
/*          GestureDetector(
              child: const Icon(Icons.refresh),
            onTap: (){
                debugPrint("Refresh");
            },
          )*/
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          children: [
            // main card
            MainCard(),
            SizedBox(
              height: 20.0,
            ),
            Header(
              header: 'Weather Forecast',
            ),
            SizedBox(
              height: 14.0,
            ),
            ScrollRow(),
            SizedBox(height: 20.0),
            Header(header: "Additional Information")
          ],
        ),
      ),
    );
  }
}

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
            Icon(Icons.cloud),
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
