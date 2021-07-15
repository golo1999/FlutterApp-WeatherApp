import 'dart:ui';

import 'package:flutter/services.dart';

const String applicationTitle = 'WeatherApp';
const String noWeatherText = "Couldn't get weather data. Please try again.";
const Color primaryColor = Color(0xff00203F);
const Color secondaryColor = Color(0xffADEFD1);
const Color transparentColor = Color(0x00000000);
const Color whiteColor = Color(0xffFFFFFF);

const String clearSkyNightIcon = 'assets/weather_icons/clear_night.svg';

void setTransparentStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: transparentColor,
    ),
  );
}

String convertKelvinToCelsius(double kelvinTemperature) {
  final int celsiusTemperature = (kelvinTemperature - 273.15).toInt();

  return '$celsiusTemperature°';
}
