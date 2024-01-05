import 'package:day_1/screens/not_found.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

String markdownData = '''# 🎉 Fun with Markdown!

## 🚀 Introduction
Welcome to this **fun and exciting** markdown guide! Let's dive into the world of Markdown and discover how it makes text formatting cool and easy!

## 🎈 Basics: Add Some Flair

- **Bold and Beautiful:** Make your text stand out! Use `**` or `__`. Example: **Look at me!**
- *Sassy Italics:* Add a slant with `*` or `_`. Example: *I'm leaning!*

### 🍔 Let's List Some Fun Things!

1. 🌟 Star gazing
2. 🏖 Beach parties
3. 🍕 Pizza nights

- 🎮 Video games
- 📚 Reading a good book
- 🧘 Yoga time

## 🌈 Advanced Fun

### 🖼 Adding Images and Links

A cute pic: 

![Cute Cat](https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1)

Visit a fun site: [Fun Site](https://example.com)

### 🎶 Code Block Party

```javascript
// JavaScript party trick
function partyTime() {
    console.log("Let's dance 💃🕺!");
}
```

## 🎤 Conclusion
Markdown is not just for formatting; it's for having fun while expressing yourself! Keep exploring and enjoy the markdown party! 🎊

> Enjoy crafting your own fun markdown documents! 🎨🎉''';

class EditorPreview extends StatefulWidget {
  const EditorPreview({super.key});

  @override
  State<EditorPreview> createState() => _EditorPreviewState();
}

class _EditorPreviewState extends State<EditorPreview> {
  String content = markdownData;
  bool isEditButtonActive = true;
  bool isPreviewButtonActive = false;
  String tab = "edit";

  TextEditingController textController = TextEditingController();

  void setContent() {
    setState(() {
      content = textController.text;
    });
  }

  @override
  void initState() {
    super.initState();
    textController.text = content;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: tab == "preview"
            ? SingleChildScrollView(
                child: MarkdownBody(
                  data: content,
                ),
              )
            : tab == "edit"
                ? TextField(
                    maxLines: null,
                    expands: true,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                    controller: textController,
                  )
                : const NotFoundPage(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text(''),
      actions: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton.icon(
              onPressed: () {
                setState(() {
                  tab = "edit";
                  textController.text = content;
                });
              },
              label: const Text('Edit'),
              icon: const Icon(Icons.edit),
              style: TextButton.styleFrom(
                foregroundColor: tab == "edit" ? Colors.white : Colors.white,
                backgroundColor:
                    tab == "edit" ? Colors.blueGrey : Colors.black26,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10.0), // Gap between buttons

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton.icon(
              onPressed: () {
                setState(() {
                  tab = "preview";
                  setContent();
                });
              },
              label: const Text('Preview'),
              icon: const Icon(Icons.preview),
              style: TextButton.styleFrom(
                foregroundColor: tab == "preview" ? Colors.white : Colors.white,
                backgroundColor:
                    tab == "preview" ? Colors.blueGrey : Colors.black26,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
