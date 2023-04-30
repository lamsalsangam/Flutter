import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget{
  @override
  State<ChooseLocation> createState()=>_ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation>{
  // int counter = 0;
  void getData() async {
    // Simulate the retrieval of the username.
    String username =  await Future.delayed(const Duration(seconds: 3), (){
      return "Sangam";
    });

    // Simulate the retrieval of the bio.
    String bio = await Future.delayed(const Duration(seconds: 2),(){
      return "Don't know much of anything";
    });

    if (kDebugMode) {
      print("$username - $bio");
    }
  }

  @override
  void initState() {
    super.initState();
    if (kDebugMode) {
      print("initState Ran");
    }
  }

  @override
  Widget build(BuildContext context){
    print("build function ran");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      // body: ElevatedButton(onPressed: (){
      //   setState(() {
      //     counter ++;
      //   });
      // }, child: Text("Count is $counter")),
    );
  }
}