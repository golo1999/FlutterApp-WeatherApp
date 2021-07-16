import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/get_local_weather.dart';
import 'package:weather_app/src/actions/get_location.dart';
import 'package:weather_app/src/models/app_state.dart';

Reducer<AppState> reducer = combineReducers(
  <Reducer<AppState>>[
    (AppState state, dynamic action) {
      print(action);
      return state;
    },
    TypedReducer<AppState, GetLocationSuccessful>(_getLocationSuccessful),
    TypedReducer<AppState, GetLocalWeatherSuccessful>(_getLocalWeatherSuccessful),
  ],
);

AppState _getLocationSuccessful(AppState state, GetLocationSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.location.replace(action.location);
  });
}

AppState _getLocalWeatherSuccessful(AppState state, GetLocalWeatherSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.weather.replace(action.weather);
  });
}
