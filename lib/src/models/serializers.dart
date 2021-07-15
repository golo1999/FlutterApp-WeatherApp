import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather_app/src/models/app_state.dart';
import 'package:weather_app/src/models/current.dart';
import 'package:weather_app/src/models/local_weather.dart';
import 'package:weather_app/src/models/weather.dart';

import 'location.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[AppState, Current, Weather, Location, LocalWeather])
Serializers serializers =
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
