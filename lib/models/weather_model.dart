import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WeatherModel {
  final String weatherStateName;
  final double minTemp;
  final double maxTemp;
  final double temp;
  final String cityName;
  final DateTime time;

  WeatherModel(
      { @required this.time,
      @required this.weatherStateName,
      @required this.minTemp,
      @required this.maxTemp,
      @required this.temp,
      @required this.cityName});

  String fetImage() {
    if (weatherStateName == 'Clear' || weatherStateName == 'Light Cloud') {
      return 'assets/icon/clear.png';
    } else if (weatherStateName == 'Sleet' ||
        weatherStateName == 'Snow' ||
        weatherStateName == 'Hail') {
      return 'assets/icon/snow.png';
    } else if (weatherStateName == 'Heavy Cloud') {
      return 'assets/icon/LightCloud.png';
    } else if (weatherStateName == 'Light Rain' ||
        weatherStateName == 'Heavy Rain' ||
        weatherStateName == 'Showers	') {
      return 'assets/icon/rain.png';
    } else if (weatherStateName == 'Thunderstorm') {
      return 'images/thunderstorm.png';
    } else {
      return 'assets/icon/clear.png';
    }
  }
}
