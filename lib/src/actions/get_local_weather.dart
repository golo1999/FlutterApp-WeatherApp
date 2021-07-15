import 'package:weather_app/src/models/weather.dart';

class GetWeather {
  GetWeather(this.latitude, this.longitude);

  final double latitude;
  final double longitude;
}

class GetWeatherSuccessful {
  GetWeatherSuccessful(this.weather);

  final Weather weather;

  @override
  String toString() {
    return 'GetWeatherSuccessful{weather: $weather}';
  }
}

class GetWeatherError {
  GetWeatherError(this.error);

  final dynamic error;

  @override
  String toString() {
    return 'GetWeatherError{error: $error}';
  }
}
