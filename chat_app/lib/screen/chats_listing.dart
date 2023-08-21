import 'package:flutter/material.dart';

class ChatsListing extends StatelessWidget {
  const ChatsListing({Key? key}) : super(key: key);

  static const String routeName = "/chat-listing";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer(); // Opens the drawer
              },
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/memento.jpg"),
              ),
            );
          },
        ),
        title: const Text("Chats"),
        actions: [
          IconButton(
            onPressed: () {
              // Perform some action here
            },
            icon: const Icon(Icons.camera_alt_rounded),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/memento.jpg"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.group_add),
              title: const Text("New Group"),
              onTap: () {
                // Handle item 1
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip_rounded),
              title: const Text("Privacy policy"),
              onTap: () {
                // Handle item 2
              },
            ),
          ],
        ),
      ),
    );
  }
}
