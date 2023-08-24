import 'package:chat_app/components/chat_tile_section.dart';
import 'package:flutter/material.dart';

import '../components/chat_app_bar.dart';
import '../components/user_bar.dart';

class ChatsListing extends StatelessWidget {
  const ChatsListing({Key? key}) : super(key: key);

  static const String routeName = "/chat-listing";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildChatAppBar(context),
      drawer: buildChatDrawer(),
      body: const Column(
        children: [
          UserBar(),
          ChatTileSection()
        ],
      ),
    );
  }
}

