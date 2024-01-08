import 'package:days/screens/days/day3/editor_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const markdownContent = """
# Markdown

Integrate Markdown content in **Flutter**

📚 Today's Agenda:
- Introduction to Markdown
- Markdown Syntax Overview
- Setting Up React Native <==> Flutter for Markdown
- Implementing Markdown Rendering
- Styling Markdown Content
  """;

class Day3Screen extends StatelessWidget {
  final int day;

  const Day3Screen({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day $day MarkDown"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MarkdownBody(data: markdownContent),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EditorPreview()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Make your own Markdown."),
              ),
            )
          ],
        ),
      ),
    );
  }
}
