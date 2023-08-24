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
      body: const Padding(
        padding: EdgeInsets.only(top: 10,left: 8.0,right: 8.0, bottom: 15),
        child: Column(
          children: [
            UserBar()
          ],
        ),
      ),
    );
  }
}

