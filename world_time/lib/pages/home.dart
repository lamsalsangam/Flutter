import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  // const Home({super.key})
  @override
  State<Home> createState()=>_HomeState();
}

class _HomeState extends State<Home>{

  Map data ={};

  @override
  Widget build(BuildContext context){
    data = ModalRoute.of(context)?.settings.arguments as Map;
    
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,120.0,0,0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(
                  Icons.edit_location,
                  color: Colors.blueGrey[900],
                ),
                label: Text(
                  'Edit Location',
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                  ),
                ),
              ),
              const SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: const TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20.0,),
              Text(
                data['time'],
                style: const TextStyle(
                  fontSize: 66.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}