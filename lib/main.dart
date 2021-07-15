import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
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

  final Client client = Client();

  final LocationAPI locationAPI = LocationAPI(httpClient: client);

  final LocalWeatherAPI weatherAPI = LocalWeatherAPI(httpClient: client);

  final LocationMiddleware locationMiddleware = LocationMiddleware(locationAPI: locationAPI, weatherAPI: weatherAPI);

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
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(),
        ),
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
