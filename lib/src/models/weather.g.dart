// GENERATED CODE - DO NOT MODIFY BY HAND

part of weather;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object?> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Weather extends Weather {
  @override
  final String description;

  factory _$Weather([void Function(WeatherBuilder)? updates]) =>
      (new WeatherBuilder()..update(updates)).build();

  _$Weather._({required this.description}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        description, 'Weather', 'description');
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather && description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(0, description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('description', description))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  String? _description;

  String? get description => _$this._description;

  set description(String? description) => _$this._description = description;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Weather build() {
    final _$result = _$v ??
        new _$Weather._(
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'Weather', 'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
