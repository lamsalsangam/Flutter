import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            color: Colors.cyan[200],
            fontSize: 40.0,
          ),
        ),
      ),
    );
  }
}
