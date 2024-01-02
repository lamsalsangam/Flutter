import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Day3Screen extends StatelessWidget {
  final int day;

  const Day3Screen({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Markdown(data: """
  # This is a Heading 1
  ## This is a Heading 2
  This is a paragraph with some *italic* and **bold** text.
  - This is a bullet point
  - Another bullet point
  1. This is a numbered list
  2. Another numbered item
  """),
    );
  }
}
