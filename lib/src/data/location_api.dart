import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/src/models/location.dart';

class LocationAPI {
  LocationAPI({required Client httpClient}) : _httpClient = httpClient;

  final Client _httpClient;

  Future<Location> getLocation() async {
    final Uri url = Uri(
      scheme: 'http',
      host: 'ip-api.com',
      pathSegments: <String>['json'],
      queryParameters: <String, String>{
        'fields': '33615871',
      },
    );

    final Response response = await _httpClient.get(url);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    final Location location = Location.fromJson(jsonDecode(response.body));

    return location;
  }
}
