import 'package:flutter/material.dart';

class ChatHeader extends StatelessWidget implements PreferredSizeWidget {
  const ChatHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black54,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: const Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/wall.jpg"),
            radius: 25,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              "@name",
              style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.none,
                overflow: TextOverflow.ellipsis,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
