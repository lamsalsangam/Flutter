import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  //Location name for the UI
  String location;
  // the time in that location
  late String time;
  // url to the assets flag icons
  String flag;
  // location url for the api end point
  String url;

  WorldTime({required this.location,required this.flag, required this.url});

  Future<void> getTime() async {
    // Make the request
    Response response = await get(Uri.parse("https://timeapi.io/api/Time/current/zone?timeZone=$url"));
    Map data = jsonDecode(response.body);
    // Set the time property
    DateTime now = DateTime.parse(data["dateTime"]);

    time = now.toString();

  }
}