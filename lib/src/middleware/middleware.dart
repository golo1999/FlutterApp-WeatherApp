import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/get_local_weather.dart';
import 'package:weather_app/src/actions/get_location.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/app_state.dart';
import 'package:weather_app/src/models/local_weather.dart';
import 'package:weather_app/src/models/location.dart';

class LocationMiddleware {
  const LocationMiddleware({required LocationAPI locationAPI, required LocalWeatherAPI weatherAPI})
      : _locationAPI = locationAPI,
        _weatherAPI = weatherAPI;

  final LocationAPI _locationAPI;
  final LocalWeatherAPI _weatherAPI;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetLocation>(_getLocation),
      TypedMiddleware<AppState, GetLocalWeather>(_getLocalWeather),
    ];
  }

  Future<void> _getLocation(Store<AppState> store, GetLocation action, NextDispatcher next) async {
    next(action);

    try {
      final Location currentLocation = await _locationAPI.getLocation();

      store.dispatch(GetLocationSuccessful(currentLocation));
      store.dispatch(GetLocalWeather(currentLocation.lat, currentLocation.lon));
    } catch (error) {
      store.dispatch(GetLocationError(error));
    }
  }

  Future<void> _getLocalWeather(Store<AppState> store, GetLocalWeather action, NextDispatcher next) async {
    next(action);

    try {
      final LocalWeather currentWeather =
          await _weatherAPI.getLocalWeather(store.state.location!.lat, store.state.location!.lon);

      store.dispatch(GetLocalWeatherSuccessful(currentWeather));
    } catch (error) {
      store.dispatch(GetLocalWeatherError(error));
    }
  }
}
