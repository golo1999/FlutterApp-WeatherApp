import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/src/actions/get_local_weather.dart';
import 'package:weather_app/src/actions/get_location.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/app_state.dart';
import 'package:weather_app/src/models/local_weather.dart';
import 'package:weather_app/src/models/location.dart';

class AppEpic {
  AppEpic({required LocationAPI locationAPI, required LocalWeatherAPI localWeatherAPI})
      : _locationAPI = locationAPI,
        _localWeatherAPI = localWeatherAPI;

  final LocationAPI _locationAPI;
  final LocalWeatherAPI _localWeatherAPI;

  Epic<AppState> get epic {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetLocation>(_getLocation),
      TypedEpic<AppState, GetLocalWeather>(_getLocalWeather),
    ]);
  }

  Stream<Object> _getLocation(Stream<GetLocation> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetLocation event) => _locationAPI.getLocation())
        .expand((Location location) {
      return <Object>[
        GetLocationSuccessful(location),
        GetLocalWeather(location.lat, location.lon),
      ];
    }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocationError(error));
  }

  Stream<Object> _getLocalWeather(Stream<GetLocalWeather> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetLocalWeather event) =>
            _localWeatherAPI.getLocalWeather(store.state.location!.lat, store.state.location!.lon))
        .map<Object>((LocalWeather localWeather) => GetLocalWeatherSuccessful(localWeather))
        .onErrorReturnWith((Object error, StackTrace stackTrace) {
      print(stackTrace);
      return GetLocalWeatherError(error);
    });
  }
}
