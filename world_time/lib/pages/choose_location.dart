import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget{
  @override
  State<ChooseLocation> createState()=>_ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation>{
  // int counter = 0;

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