
import 'package:flutter/cupertino.dart';
import 'package:weatherapp/models/weather_model.dart';

class WeatherData extends ChangeNotifier {
  WeatherModel _weatherModel;

  set setWeatherData(WeatherModel weatherModel) {
    this._weatherModel = weatherModel;
    notifyListeners();
  }

  WeatherModel get getWeatherData => this._weatherModel;

}