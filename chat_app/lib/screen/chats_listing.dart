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
      body: Padding(
        padding: const EdgeInsets.only(top: 10,left: 8.0,right: 8.0, bottom: 15),
        child: Column(
          children: [
            SizedBox(
              height: 106,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/images/wall.jpg"),
                        ),
                        SizedBox(
                          width: 50,
                          child: Text(
                            "@name giver",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
