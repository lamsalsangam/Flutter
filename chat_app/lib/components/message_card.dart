import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final String message;
  final bool isSender;

  const MessageCard({Key? key, required this.message, required this.isSender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: isSender
                  ? const Radius.circular(10)
                  : const Radius.circular(5),
              topRight: isSender
                  ? const Radius.circular(5)
                  : const Radius.circular(10),
              bottomLeft: isSender
                  ? const Radius.circular(10)
                  : const Radius.circular(5),
              bottomRight: isSender
                  ? const Radius.circular(5)
                  : const Radius.circular(10),
            ),
            child: Container(
              color: isSender ? Colors.blueGrey : Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white70,
                    decoration: TextDecoration.none,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
