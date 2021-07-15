library weather;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_app/src/models/current.dart';
import 'package:weather_app/src/models/serializers.dart';

part 'local_weather.g.dart';

abstract class LocalWeather
    implements Built<LocalWeather, LocalWeatherBuilder> {
  factory LocalWeather([void Function(LocalWeatherBuilder b) updates]) =
      _$LocalWeather;

  factory LocalWeather.fromJson(dynamic json) =>
      serializers.deserializeWith(serializer, json)!;

  LocalWeather._();

  Current get current;

  Map<String, dynamic> get json =>
      serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<LocalWeather> get serializer => _$localWeatherSerializer;
}
