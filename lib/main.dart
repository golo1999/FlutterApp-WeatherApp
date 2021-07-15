import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/get_location.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/middleware/middleware.dart';
import 'package:weather_app/src/models/app_state.dart';
import 'package:weather_app/src/presentation/home_page.dart';
import 'package:weather_app/src/reducer/reducer.dart';

Future<void> main() async {
  await dotenv.load(fileName: 'assets/.env');

  const String apiURL = 'http://ip-api.com/json/?fields=33615871';
  final Client client = Client();
  final LocationAPI locationAPI =
      LocationAPI(apiURL: apiURL, httpClient: client);
  final WeatherAPI weatherAPI = WeatherAPI(httpClient: client);
  final LocationMiddleware locationMiddleware =
      LocationMiddleware(locationAPI: locationAPI, weatherAPI: weatherAPI);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: locationMiddleware.middleware,
  );

  store.dispatch(GetLocation());

  runApp(MyLocation(store: store));
}

class MyLocation extends StatelessWidget {
  const MyLocation({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
