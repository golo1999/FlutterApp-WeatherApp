part of models;

abstract class LocalWeather implements Built<LocalWeather, LocalWeatherBuilder> {
  factory LocalWeather([void Function(LocalWeatherBuilder b) updates]) = _$LocalWeather;

  factory LocalWeather.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  LocalWeather._();

  Current get current;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<LocalWeather> get serializer => _$localWeatherSerializer;
}
