import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:weather_app/src/models/weather.dart';

class WeatherAPI {
  WeatherAPI({required Client httpClient}) : _httpClient = httpClient;

  final Client _httpClient;

  Future<Weather> getWeather(
      final double latitude, final double longitude) async {
    final String? apiKey = dotenv.env['WEATHER_API_KEY'];
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.openweathermap.org',
      pathSegments: <String>['data', '2.5', 'onecall'],
      queryParameters: <String, String>{
        'lat': '$latitude',
        'lon': '$longitude',
        'exclude': 'hourly,daily',
        'appid': apiKey!,
      },
    );

    print(url.toString());

    final Response response = await _httpClient.get(url);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    final Weather weather = Weather.fromJson(jsonDecode(response.body));

    return weather;
  }
}
