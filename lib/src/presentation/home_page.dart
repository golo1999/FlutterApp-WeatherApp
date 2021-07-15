import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/src/container/location_container.dart';
import 'package:weather_app/src/container/weather_container.dart';
import 'package:weather_app/src/models/app_data.dart';
import 'package:weather_app/src/models/location.dart';
import 'package:weather_app/src/models/weather.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);

    return LocationContainer(
      builder: (BuildContext context, Location? location) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              applicationTitle,
              style: TextStyle(color: whiteColor),
            ),
            backgroundColor: primaryColor,
            centerTitle: true,
          ),
          body: LocationContainer(
            builder: (BuildContext context, Location? location) {
              return WeatherContainer(
                builder: (BuildContext context, Weather? weather) {
                  return SizedBox(
                    width: data.size.width,
                    height: data.size.height,
                    child: Container(
                      color: secondaryColor,
                      child: location == null && weather == null
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
                                if (location != null)
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
                                if (weather != null)
                                  Padding(
                                    padding: EdgeInsets.all(
                                      data.size.shortestSide * 0.025,
                                    ),
                                    child: Text(
                                      'Cloudy',
                                      //weather.current.weather['description'].toString().toUpperCase(),
                                      style: TextStyle(
                                        color: primaryColor,
                                        fontSize: data.size.shortestSide * 0.05,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                if (weather != null)
                                  Padding(
                                    padding: EdgeInsets.all(
                                      data.size.shortestSide * 0.025,
                                    ),
                                    child: SvgPicture.asset(
                                      clearSkyNightIcon,
                                      width: data.size.longestSide * 0.1,
                                      height: data.size.longestSide * 0.1,
                                    ),
                                  ),
                                if (weather != null)
                                  Padding(
                                    padding: EdgeInsets.all(
                                      data.size.shortestSide * 0.025,
                                    ),
                                    child: Text(
                                      convertKelvinToCelsius(
                                        weather.current.temp,
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

/*

Icons:
  - Group 2xx: Thunderstorm X
  - Group 3xx: Drizzle X
  - Group 5xx: Rain X
  - Group 6xx: Snow X
  - Group 7xx: Atmosphere X
    - Mist X
    - Smoke X
    - Haze X
    - Sand/Dust whirls X
    - Fog X
    - Sand X
    - Dust X
    - Volcanic ash X
    - Squalls X
    - Tornado X
  - Group 800: Clear X
  - Group 80x: Clouds X

 */
