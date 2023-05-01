import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget{
  @override
  State<Loading> createState()=>_LoadingState();
}

class _LoadingState extends State<Loading>{

  void setUpDateTime() async{
    WorldTime instance = WorldTime(location: "Kathmandu", flag: "Nepal.png", url: "Asia/Kathmandu");
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
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
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: SpinKitChasingDots(
          color: Colors.white,
          size: 100.0,
        ),
      )
    );
  }
}