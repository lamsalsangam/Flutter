import 'package:flutter/material.dart';
import 'package:weather_app/weather_forecast_item.dart';

import 'additional_info.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Refresh");
            },
            icon: const Icon(
              Icons.refresh_outlined,
            ),
          ),
/*          GestureDetector(
              child: const Icon(Icons.refresh),
            onTap: (){
                debugPrint("Refresh");
            },
          )*/
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          children: [
            // main card
            MainCard(),
            SizedBox(
              height: 20.0,
            ),
            Header(
              header: 'Weather Forecast',
            ),
            SizedBox(
              height: 14.0,
            ),
            ScrollRow(),
            SizedBox(height: 20.0),
            Header(header: "Additional Information"),
            SizedBox(
              height: 14.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfoWidget(icon: Icons.water_drop, label: "Humidity", value: "83"),
                AdditionalInfoWidget(icon: Icons.wind_power_sharp, label: "Wind Speed", value: "13.0"),
                AdditionalInfoWidget(icon: Icons.visibility, label: "Visibility", value: "6"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



