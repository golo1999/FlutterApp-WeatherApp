import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/models/app_state.dart';
import 'package:weather_app/src/models/local_weather.dart';

class LocalWeatherContainer extends StatelessWidget {
  const LocalWeatherContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<LocalWeather?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LocalWeather?>(
      converter: (Store<AppState> store) => store.state.weather,
      builder: builder,
    );
  }
}
