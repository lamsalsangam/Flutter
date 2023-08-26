import 'package:flutter/material.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/wall.jpg"),
          radius: 25,
        ),
        const SizedBox(
          width: 5,
        ),
        const SizedBox(
          width: 100,
          child: Text(
            "@name",
            style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.none,
                overflow: TextOverflow.ellipsis,
                color: Colors.white70),
          ),
        ),
      ],
    );
  }
}
