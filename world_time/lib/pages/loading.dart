import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget{
  @override
  State<Loading> createState()=>_LoadingState();
}

class _LoadingState extends State<Loading>{

  String time = "Loading";

  void setUpDateTime() async{
    WorldTime instance = WorldTime(location: "Kathmandu", flag: "Nepal.png", url: "Asia/Kathmandu");
    await instance.getTime();
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setUpDateTime();
    if (kDebugMode) {
      print("initState Ran");
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text(time),
      )
    );
  }
}