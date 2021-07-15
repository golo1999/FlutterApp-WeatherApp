import 'package:weather_app/src/models/local_weather.dart';

class GetLocalWeather {
  GetLocalWeather(this.latitude, this.longitude);

  final double latitude;
  final double longitude;
}

class GetLocalWeatherSuccessful {
  GetLocalWeatherSuccessful(this.weather);

  final LocalWeather weather;

  @override
  String toString() {
    return 'GetLocalWeatherSuccessful{weather: $weather}';
  }
}

class GetLocalWeatherError {
  GetLocalWeatherError(this.error);

  final dynamic error;

  @override
  String toString() {
    return 'GetLocalWeatherError{error: $error}';
  }
}
