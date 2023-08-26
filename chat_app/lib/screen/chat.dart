import 'package:flutter/material.dart';

import '../components/chat_header.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  static const String routeName = "/chat";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(top: 10, left: 8.0, right: 8.0, bottom: 15),
      height: double.infinity,
      child: const SafeArea(
        child: Column(
          children: [
            ChatHeader(),
          ],
        ),
      ),
    );
  }
}
