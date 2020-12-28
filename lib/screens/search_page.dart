import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/provder/weather_provder.dart';
import 'package:weatherapp/services/dataweather.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey =GlobalKey<ScaffoldState>();
  static String id = 'SearchPage';
  String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white38,
      appBar: AppBar(backgroundColor: Colors.white10,
        title: Text("Search a City",
            style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(

            cursorColor: Colors.black,
            cursorHeight: 20,
            onChanged: (value) {
              cityName = value;
            },
            onSubmitted: (value) async {
              cityName = value;
              WeatherModel model = await WeatherAPi().fetchWeather(cityName);
              Navigator.pop(context);
              Provider.of<WeatherData>(context, listen: false).setWeatherData =
                  model;
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.black)
              ),
              labelStyle: TextStyle(color: Colors.black),
              suffix: IconButton(
                color: Colors.black,
                  onPressed: () async {
                  try{
                    WeatherModel model = await WeatherAPi().fetchWeather(cityName);
                    Navigator.pop(context);
                    Provider.of<WeatherData>(context, listen: false).setWeatherData =
                        model;}
                        catch(ex){
                    _scaffoldKey.currentState.showSnackBar(
                      SnackBar(content: Text("Enter A valid City name"))
                    );
                        }
                  },
                  icon: Icon(
                    Icons.search,
                  )),
              labelText: 'Search',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black)
                ),

              hintText: 'Enter City Name',
            ),
          ),
        ),
      ),
    );
  }
}