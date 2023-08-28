import 'package:flutter/material.dart';
import '../components/chat_header.dart';
import '../components/message_card.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  static const String routeName = "/chat";

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final TextEditingController _messageController = TextEditingController();
  final List<Widget> _messages = [];

  void _sendMessage() {
    String message = _messageController.text;
    if (message.isNotEmpty) {
      setState(() {
        _messages.add(MessageCard(
          message: message,
          isSender: true,
        ));
      });
      _messageController.clear();
      // Scroll to the bottom of the ListView after sending a message
      Future.delayed(const Duration(milliseconds: 100), () {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      });
    }
  }

  final ScrollController _scrollController = ScrollController();

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
                child: ListView.builder(
                  controller: _scrollController,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return _messages[index];
                  },
                ),
              ),
            ),
            _buildMessageInput(),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                hintText: 'Type a message...',
              ),
            ),
          ),
          IconButton(
            onPressed: _sendMessage,
            icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
