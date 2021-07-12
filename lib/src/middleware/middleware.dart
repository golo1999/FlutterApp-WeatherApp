import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/get_location.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/models/app_state.dart';
import 'package:weather_app/src/models/location.dart';

class LocationMiddleware {
  const LocationMiddleware({required LocationAPI locationAPI})
      : _locationAPI = locationAPI;

  final LocationAPI _locationAPI;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetLocation>(_getLocation),
    ];
  }

  Future<void> _getLocation(
      Store<AppState> store, GetLocation action, NextDispatcher next) async {
    next(action);

    try {
      final Location currentLocation = await _locationAPI.getLocation();
      store.dispatch(GetLocationSuccessful(currentLocation));
    } catch (error) {
      store.dispatch(GetLocationError(error));
    }
  }
}
