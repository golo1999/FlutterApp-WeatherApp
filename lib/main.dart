import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/epics/app_epic.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:weather_app/src/presentation/home_page.dart';
import 'package:weather_app/src/reducer/reducer.dart';

Future<void> main() async {
  await dotenv.load(fileName: 'assets/.env');

  final Client client = Client();

  final LocationAPI locationAPI = LocationAPI(httpClient: client);

  final LocalWeatherAPI localWeatherAPI = LocalWeatherAPI(httpClient: client);

  final AppEpic appEpic = AppEpic(locationAPI: locationAPI, localWeatherAPI: localWeatherAPI);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(appEpic.epic),
    ],
  );

  store.dispatch(const GetLocation());

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
