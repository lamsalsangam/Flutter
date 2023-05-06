import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // home: const MyHomePage(title: "Sangam Store"),
      initialRoute: "/",
      routes: {
        "/":(context)=>const MyHomePage(title: "Sangam Store"),
        "/login":(context)=>const LoginPage(),
      },
    );
  }
}