import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/index.dart';

class AppEpic {
  AppEpic({required LocationAPI locationAPI, required LocalWeatherAPI localWeatherAPI})
      : _locationAPI = locationAPI,
        _localWeatherAPI = localWeatherAPI;

  final LocationAPI _locationAPI;
  final LocalWeatherAPI _localWeatherAPI;

  Epic<AppState> get epic {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetLocationStart>(_getLocation),
      TypedEpic<AppState, GetLocalWeatherStart>(_getLocalWeather),
    ]);
  }

  // Stream<AppAction> _getLocation(Stream<GetLocationStart> actions, EpicStore<AppState> store) {
  //   return actions //
  //       .asyncMap((GetLocationStart event) => _locationAPI.getLocation())
  //       .expand((Location location) {
  //     return <Object>[
  //       GetLocation.successful(location),
  //       const GetLocalWeatherStart(),
  //     ];
  //   }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocation.error(error, stackTrace));
  // }
  //
  // Stream<AppAction> _getLocalWeather(Stream<GetLocalWeatherStart> actions, EpicStore<AppState> store) {
  //   return actions //
  //       .asyncMap((GetLocalWeatherStart event) =>
  //           _localWeatherAPI.getLocalWeather(store.state.location!.lat, store.state.location!.lon))
  //       .map<Object>((LocalWeather localWeather) => GetLocalWeather.successful(localWeather))
  //       .onErrorReturnWith((Object error, StackTrace stackTrace) {
  //     print(stackTrace);
  //     return GetLocalWeather.error(error, stackTrace);
  //   });
  // }

  Stream<AppAction> _getLocation(Stream<GetLocationStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetLocationStart event) => _locationAPI.getLocation())
        .expand((Location element) {
      return <AppAction>[
        GetLocation.successful(element),
        const GetLocalWeatherStart(),
      ];
    });
  }

  Stream<AppAction> _getLocalWeather(Stream<GetLocalWeatherStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetLocalWeatherStart event) =>
            _localWeatherAPI.getLocalWeather(store.state.location!.lat, store.state.location!.lon))
        .map((LocalWeather event) => GetLocalWeather.successful(event))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocalWeather.error(error, stackTrace));
  }
}
