import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/src/container/local_weather_container.dart';
import 'package:weather_app/src/container/location_container.dart';
import 'package:weather_app/src/models/app_data.dart';
import 'package:weather_app/src/models/local_weather.dart';
import 'package:weather_app/src/models/location.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);

    return LocationContainer(
      builder: (BuildContext context, Location? location) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              applicationTitle,
              style: TextStyle(
                color: whiteColor,
                fontSize: data.size.shortestSide * 0.05,
              ),
            ),
            backgroundColor: primaryColor,
            centerTitle: true,
          ),
          body: LocationContainer(
            builder: (BuildContext context, Location? location) {
              return LocalWeatherContainer(
                builder: (BuildContext context, LocalWeather? localWeather) {
                  return SizedBox(
                    width: data.size.width,
                    height: data.size.height,
                    child: Container(
                      color: secondaryColor,
                      child: location == null && localWeather == null
                          // if the location and weather are both null
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(
                                    data.size.shortestSide * 0.05,
                                  ),
                                  child: Text(
                                    noWeatherText,
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontSize: data.size.shortestSide * 0.06,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )

                          // if location and weather are both not null
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                if (location != null && localWeather != null)
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal:
                                          data.size.shortestSide * 0.025,
                                      vertical: data.size.shortestSide * 0.01,
                                    ),
                                    child: Text(
                                      location.city.toUpperCase(),
                                      style: TextStyle(
                                        color: primaryColor,
                                        fontSize: data.size.shortestSide * 0.1,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                if (localWeather != null)
                                  Padding(
                                    padding: EdgeInsets.all(
                                      data.size.shortestSide * 0.025,
                                    ),
                                    child: Text(
                                      localWeather
                                          .current.weather.first.description
                                          .toUpperCase(),
                                      style: TextStyle(
                                        color: primaryColor,
                                        fontSize: data.size.shortestSide * 0.05,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                if (localWeather != null)
                                  Padding(
                                    padding: EdgeInsets.all(
                                      data.size.shortestSide * 0.025,
                                    ),
                                    child: SvgPicture.asset(
                                      getIconPathFromWeather(
                                          localWeather.current.weather.first),
                                      width: data.size.longestSide * 0.1,
                                      height: data.size.longestSide * 0.1,
                                    ),
                                  ),
                                if (localWeather != null)
                                  Padding(
                                    padding: EdgeInsets.all(
                                      data.size.shortestSide * 0.025,
                                    ),
                                    child: Text(
                                      convertKelvinToCelsius(
                                        localWeather.current.temp,
                                      ),
                                      style: TextStyle(
                                        color: primaryColor,
                                        fontSize: data.size.shortestSide * 0.2,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                              ],
                            ),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
