import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:weather_app/home_page.dart';

void main() {
  runApp(const WeatherApp());
}



// Теперь пришло время создать первую службу,
// которая даст нам наше местоположение (широту и долготу),
// а затем отправит эту информацию в другой класс,
// который подключится к нашему API и получит данные,
// которые позже будут использоваться в нашем приложении
