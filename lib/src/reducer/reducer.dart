import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/models/index.dart';

Reducer<AppState> reducer = combineReducers(
  <Reducer<AppState>>[
    (AppState state, dynamic action) {
      print(action);
      return state;
    },
    TypedReducer<AppState, GetLocation>(_getLocation),
    TypedReducer<AppState, GetLocationSuccessful>(_getLocationSuccessful),
    TypedReducer<AppState, GetLocationError>(_getLocationError),
    TypedReducer<AppState, GetLocalWeather>(_getLocalWeather),
    TypedReducer<AppState, GetLocalWeatherSuccessful>(_getLocalWeatherSuccessful),
    TypedReducer<AppState, GetLocalWeatherError>(_getLocalWeatherError),
  ],
);

AppState _getLocation(AppState state, GetLocation action) {
  return state.rebuild((AppStateBuilder builder) {});
}

AppState _getLocationSuccessful(AppState state, GetLocationSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.location.replace(action.location);
  });
}

AppState _getLocationError(AppState state, GetLocationError action) {
  return state.rebuild((AppStateBuilder builder) {});
}

AppState _getLocalWeather(AppState state, GetLocalWeather action) {
  return state.rebuild((AppStateBuilder builder) {});
}

AppState _getLocalWeatherSuccessful(AppState state, GetLocalWeatherSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.weather.replace(action.localWeather);
  });
}

AppState _getLocalWeatherError(AppState state, GetLocalWeatherError action) {
  return state.rebuild((AppStateBuilder builder) {});
}
