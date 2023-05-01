import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';


class ChooseLocation extends StatefulWidget{
  @override
  State<ChooseLocation> createState()=>_ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation>{
  // int counter = 0;
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(location: "Kathmandu", flag: "nepal.png", url: "Asia/Kathmandu"),
  ];

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
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){},
                title: Text(locations[index].location.toString()),
                leading: CircleAvatar(
                  backgroundImage:  AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
      // body: ElevatedButton(onPressed: (){
      //   setState(() {
      //     counter ++;
      //   });
      // }, child: Text("Count is $counter")),
    );
  }
}