import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const markDownContent = """
# Animation

Learn how to do animation by using the Lottie Package
""";

class Day4Screen extends StatelessWidget {
  final int day;

  const Day4Screen({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day $day Animation"),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MarkdownBody(data: markDownContent),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Go to Animation Page")),
          )
        ],
      ),
    );
  }
}
