import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/get_location.dart';
import 'package:weather_app/src/actions/get_weather.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/app_state.dart';
import 'package:weather_app/src/models/location.dart';
import 'package:weather_app/src/models/weather.dart';

class LocationMiddleware {
  const LocationMiddleware(
      {required LocationAPI locationAPI, required WeatherAPI weatherAPI})
      : _locationAPI = locationAPI,
        _weatherAPI = weatherAPI;

  final LocationAPI _locationAPI;
  final WeatherAPI _weatherAPI;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetLocation>(_getLocation),
      TypedMiddleware<AppState, GetWeather>(_getWeather),
    ];
  }

  Future<void> _getLocation(
      Store<AppState> store, GetLocation action, NextDispatcher next) async {
    next(action);

    try {
      final Location currentLocation = await _locationAPI.getLocation();

      store.dispatch(GetLocationSuccessful(currentLocation));
      store.dispatch(GetWeather(currentLocation.lat, currentLocation.lon));
    } catch (error) {
      store.dispatch(GetLocationError(error));
    }
  }

  Future<void> _getWeather(
      Store<AppState> store, GetWeather action, NextDispatcher next) async {
    next(action);

    try {
      final Weather currentWeather = await _weatherAPI.getWeather(
          store.state.location!.lat, store.state.location!.lon);
      store.dispatch(GetWeatherSuccessful(currentWeather));
    } catch (error) {
      store.dispatch(GetWeatherError(error));
    }
  }
}
