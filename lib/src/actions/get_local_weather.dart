part of actions;

@freezed
class GetLocalWeather with _$GetLocalWeather implements AppAction {
  const factory GetLocalWeather() = GetLocalWeatherStart;

  const factory GetLocalWeather.successful(LocalWeather localWeather) = GetLocalWeatherSuccessful;

  @Implements(ErrorAction)
  const factory GetLocalWeather.error(Object error, StackTrace stackTrace) = GetLocalWeatherError;
}
