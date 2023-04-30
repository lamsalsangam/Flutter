import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget{
  @override
  State<Loading> createState()=>_LoadingState();
}

class _LoadingState extends State<Loading>{

  void getData() async {
    Response response=await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    Map data=jsonDecode(response.body);
    print(data);
  }

  @override
  void initState() {
    super.initState();
    getData();
    if (kDebugMode) {
      print("initState Ran");
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Text("Loading Screen"),
    );
  }
}