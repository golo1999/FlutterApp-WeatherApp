import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather_app/src/models/index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[AppState, Current, LocalWeather, Location, Weather])
Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
