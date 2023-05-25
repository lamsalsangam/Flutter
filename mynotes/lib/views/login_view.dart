import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Login"
        ),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,),
        builder: (context, snapshot) {
          switch (snapshot.connectionState){
          // case ConnectionState.none:
          //   break;
          // case ConnectionState.waiting:
          //   break;
          // case ConnectionState.active:
          //   break;
            case ConnectionState.done:
              return Column(
                children: [
                  TextField(
                    controller: _email,
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    enableSuggestions: false,
                    decoration: const InputDecoration(
                      hintText: "Email here",
                    ),
                  ),
                  TextField(
                    controller: _password,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      hintText: "Enter your Password here",
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      final email = _email.text;
                      final password = _password.text;
                      try{

                      final userCredentials=await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
                      if (kDebugMode) {
                        print(userCredentials);
                      }
                      } on FirebaseAuthException catch (e){
                        if (e.code == 'user-not-found'){
                          if (kDebugMode) {
                            print("user not found");
                          }
                        }
                      }
                      // catch (error){
                      //   if (kDebugMode) {
                      //     print("Something bad happen");
                      //     print(error.runtimeType);
                      //     print(error);
                      //   }
                      // }
                    },
                    child: const Text("Login"),
                  ),
                ],
              );
            default:
              return const Text("Loading...");
          }

        },
      ),
    );
  }
}
