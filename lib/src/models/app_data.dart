import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:weather_app/src/models/weather.dart';

const String applicationTitle = 'WeatherApp';
const String noWeatherText = "Couldn't get weather data. Please try again.";
const Color primaryColor = Color(0xff00203F);
const Color secondaryColor = Color(0xffADEFD1);
const Color transparentColor = Color(0x00000000);
const Color whiteColor = Color(0xffFFFFFF);

const String clearSkyDayIcon = 'assets/weather_icons/clear.svg';
const String clearSkyNightIcon = 'assets/weather_icons/clear_night.svg';
const String cloudsDayIcon = 'assets/weather_icons/clouds.svg';
const String cloudsNightIcon = 'assets/weather_icons/clouds_night.svg';
const String drizzleIcon = 'assets/weather_icons/drizzle.svg';
const String fogIcon = 'assets/weather_icons/fog.svg';
const String hazeIcon = 'assets/weather_icons/haze.svg';
const String mistIcon = 'assets/weather_icons/mist.svg';
const String rainIcon = 'assets/weather_icons/rain.svg';
const String sandDustIcon = 'assets/weather_icons/sand_dust.svg';
const String smokeIcon = 'assets/weather_icons/smoke.svg';
const String snowIcon = 'assets/weather_icons/snow.svg';
const String thunderstormIcon = 'assets/weather_icons/thunderstorm.svg';
const String tornadoIcon = 'assets/weather_icons/tornado.svg';
const String volcanicAshIcon = 'assets/weather_icons/volcanic_ash.svg';
const String windSquallsIcon = 'assets/weather_icons/wind_squalls.svg';

void setTransparentStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: transparentColor,
    ),
  );
}

String convertKelvinToCelsius(final double kelvinTemperature) {
  final int celsiusTemperature = (kelvinTemperature - 273.15).toInt();

  return '$celsiusTemperature°';
}

String getIconPathFromWeather(final Weather weather) {
  return weather.id >= 200 && weather.id <= 232
      ? thunderstormIcon
      : weather.id >= 300 && weather.id <= 321
          ? drizzleIcon
          : weather.id >= 500 && weather.id <= 531
              ? rainIcon
              : weather.id >= 600 && weather.id <= 622
                  ? snowIcon
                  : weather.id == 701
                      ? mistIcon
                      : weather.id == 711
                          ? smokeIcon
                          : weather.id == 721
                              ? hazeIcon
                              : (weather.id == 731 ||
                                      weather.id == 751 ||
                                      weather.id == 761)
                                  ? sandDustIcon
                                  : weather.id == 741
                                      ? fogIcon
                                      : weather.id == 762
                                          ? volcanicAshIcon
                                          : weather.id == 771
                                              ? windSquallsIcon
                                              : weather.id == 781
                                                  ? tornadoIcon
                                                  : (weather.id == 800 &&
                                                          weather.icon == '01d')
                                                      ? clearSkyDayIcon
                                                      : (weather.id == 800 &&
                                                              weather.icon ==
                                                                  '01n')
                                                          ? clearSkyNightIcon
                                                          : (weather.id >=
                                                                          801 &&
                                                                      weather.id <=
                                                                          804) &&
                                                                  weather.icon
                                                                      .endsWith(
                                                                          'd')
                                                              ? cloudsDayIcon
                                                              : ((weather.id >=
                                                                              801 &&
                                                                          weather.id <=
                                                                              804) &&
                                                                      weather
                                                                          .icon
                                                                          .endsWith(
                                                                              'n'))
                                                                  ? cloudsNightIcon
                                                                  : '';
}
