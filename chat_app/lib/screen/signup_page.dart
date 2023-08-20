import 'package:flutter/material.dart';
import '../components/validation_input.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 400, // Adjust this value according to your design
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        "Guf-Gaf",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 150), // Adjust spacing here
                      const Column(
                        children: [
                          ValidationInput(
                            icons: Icons.email,
                            hint: "Email@email.com",
                            keyboardLayout: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 15),
                          ValidationInput(
                            icons: Icons.password,
                            hint: "Password",
                            keyboardLayout: TextInputType.text,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ValidationInput(
                            icons: Icons.password,
                            hint: "Re-enter Password",
                            keyboardLayout: TextInputType.text,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).popAndPushNamed("/login");
                            },
                            child: const Text("Log in"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
