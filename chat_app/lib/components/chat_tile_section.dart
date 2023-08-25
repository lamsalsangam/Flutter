import 'package:flutter/material.dart';

import 'chat_tile.dart';

class ChatTileSection extends StatelessWidget {
  const ChatTileSection({Key? key}) : super(key: key);

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
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return const ChatTile();
          },
        ),
      ),
    );
  }
}
