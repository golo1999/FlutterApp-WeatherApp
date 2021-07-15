import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/src/models/location.dart';

class LocationAPI {
  LocationAPI({required String apiURL, required Client httpClient})
      : _apiURL = apiURL,
        _httpClient = httpClient;

  final String _apiURL;
  final Client _httpClient;

  Future<Location> getLocation() async {
    final Uri url = Uri.parse(_apiURL);
    final Response response = await _httpClient.get(url);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }

    print('My location before Location.fromJson: ' + response.body);

    final Location location = Location.fromJson(jsonDecode(response.body));

    return location;
  }
}
