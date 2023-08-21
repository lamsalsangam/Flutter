import 'package:chat_app/screen/chats_listing.dart';
import 'package:chat_app/screen/login_page.dart';
import 'package:chat_app/screen/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      initialRoute: "/chat-listing",
      routes: {
        "/login": (context) => const LoginPage(),
        "/signup": (context) => const SignUpPage(),
        "/chat-listing": (context) => const ChatsListing(),
      },
    );
  }
}
