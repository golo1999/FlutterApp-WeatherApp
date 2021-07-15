import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/src/container/location_container.dart';
import 'package:weather_app/src/container/weather_container.dart';
import 'package:weather_app/src/models/app_data.dart';
import 'package:weather_app/src/models/location.dart';
import 'package:weather_app/src/models/weather.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LocationContainer(
      builder: (BuildContext context, Location? location) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              applicationTitle,
              style: TextStyle(color: secondaryColor),
            ),
            backgroundColor: primaryColor,
            centerTitle: true,
          ),
          body: LocationContainer(
            builder: (BuildContext context, Location? location) {
              return WeatherContainer(
                builder: (BuildContext context, Weather? weather) {
                  if (location != null && weather != null) {
                    return Text(
                      '${location.city}, ${location.country}, ${convertKelvinToCelsius(weather.current.temp)}',
                    );
                  } else {
                    return const Text('null');
                  }
                },
              );
            },
          ),
        );
      },
    );
  }
}
