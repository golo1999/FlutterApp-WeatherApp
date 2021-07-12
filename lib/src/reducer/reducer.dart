import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/get_location.dart';
import 'package:weather_app/src/models/app_state.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    return state;
  },
  TypedReducer<AppState, GetLocationSuccessful>(_getLocationSuccessful),
]);

AppState _getLocationSuccessful(AppState state, GetLocationSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.location = action.location.toBuilder();
  });
}
