import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  //Location name for the UI
  String location;
  // the time in that location
  late String time;
  // url to the assets flag icons
  String flag;
  // location url for the api end point
  String url;
  // true or false if daytime or not
  bool isDayTime = false;

  WorldTime({required this.location,required this.flag, required this.url});

  Future<void> getTime() async {
    try{
      // Make the request
      Response response = await get(Uri.parse("https://timeapi.io/api/Time/current/zone?timeZone=$url"));
      Map data = jsonDecode(response.body);
      // Set the time property
      DateTime now = DateTime.parse(data["dateTime"]);

      isDayTime= now.hour> 6 && now.hour< 20 ? true : false;
      time = DateFormat.jm().format(now);
    }catch(e){
      if (kDebugMode) {
        print('Error is: $e');
        time = "Could not fetch the time";
      }
    }
  }
}