import 'package:flutter/material.dart';

import '../components/chat_header.dart';
import '../components/message_card.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  static const String routeName = "/chat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChatHeader(),
      body: Container(
        color: Colors.white12,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.black54,
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  children: const [
                    MessageCard(
                      message: "Your Typed message is here ",
                      isSender: true,
                    ),
                    MessageCard(
                      message: "Received message goes here",
                      isSender: false,
                    ),
                    // Add more message cards as needed
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



