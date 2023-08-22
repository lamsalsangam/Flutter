import 'package:flutter/material.dart';

import '../components/chat_app_bar.dart';

class ChatsListing extends StatelessWidget {
  const ChatsListing({Key? key}) : super(key: key);

  static const String routeName = "/chat-listing";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildChatAppBar(context),
      drawer: buildChatDrawer(),
    );
  }
}

