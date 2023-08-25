import 'package:flutter/material.dart';

class ChatTileSection extends StatelessWidget {
  const ChatTileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding:
            const EdgeInsets.only(top: 10, left: 8.0, right: 8.0, bottom: 15),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
          color: Colors.black,
        ),
      ),
    );
  }
}


