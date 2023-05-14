import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey=GlobalKey<FormState>();

  void onButtonTapped() async {

    if (!context.mounted) return;
    await Navigator.of(context).pushNamed(MyRoutes.homeRoute);
  }

  moveToHome(BuildContext context)async{
    setState(() {
      changeButton = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    onButtonTapped();
    setState(() {
      changeButton = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/login.png", fit: BoxFit.cover,),
              const SizedBox(height: 20.0,),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value){
                        name = value;
                        setState(() {
                        });
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return "Username cannot be empty";
                        }
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password"
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Password cannot be empty";
                        }
                        else if(value.length<8){
                          return "Password must be atleast 8 character long.";
                        }
                      },
                    ),
                    const SizedBox(height: 20.0,),
                    Material(
                      borderRadius: BorderRadius.circular(changeButton? 50: 8),
                      color: Colors.deepPurple,
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 50,
                          width: changeButton?50:150,
                          alignment: Alignment.center,
                          child: changeButton? const Icon(Icons.done):const Text(
                            "Log In",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
