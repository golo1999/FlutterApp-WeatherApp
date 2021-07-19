part of actions;

@freezed
class GetLocalWeather with _$GetLocalWeather implements AppAction {
  const factory GetLocalWeather() = GetLocalWeatherStart;

  const factory GetLocalWeather.successful(LocalWeather localWeather) = GetLocalWeatherSuccessful;

  @Implements(ErrorAction)
  const factory GetLocalWeather.error(Object error, StackTrace stackTrace) = GetLocalWeatherError;
}

// class GetLocalWeather {
//   GetLocalWeather(this.latitude, this.longitude);
//
//   final double latitude;
//   final double longitude;
// }
//
// class GetLocalWeatherSuccessful {
//   GetLocalWeatherSuccessful(this.weather);
//
//   final LocalWeather weather;
//
//   @override
//   String toString() {
//     return 'GetLocalWeatherSuccessful{weather: $weather}';
//   }
// }
//
// class GetLocalWeatherError {
//   GetLocalWeatherError(this.error);
//
//   final dynamic error;
//
//   @override
//   String toString() {
//     return 'GetLocalWeatherError{error: $error}';
//   }
// }
