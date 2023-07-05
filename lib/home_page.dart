


import 'package:flutter/material.dart';
import 'package:weather_app/weather_app_widget.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
      // ),
      home: WeatherAppWidget(),
    
    );
  }
}