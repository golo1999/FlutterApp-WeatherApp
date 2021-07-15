// GENERATED CODE - DO NOT MODIFY BY HAND

part of weather;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocalWeather> _$localWeatherSerializer = new _$LocalWeatherSerializer();

class _$LocalWeatherSerializer implements StructuredSerializer<LocalWeather> {
  @override
  final Iterable<Type> types = const [LocalWeather, _$LocalWeather];
  @override
  final String wireName = 'LocalWeather';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocalWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'current',
      serializers.serialize(object.current, specifiedType: const FullType(Current)),
    ];

    return result;
  }

  @override
  LocalWeather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocalWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'current':
          result.current.replace(serializers.deserialize(value, specifiedType: const FullType(Current))! as Current);
          break;
      }
    }

    return result.build();
  }
}

class _$LocalWeather extends LocalWeather {
  @override
  final Current current;

  factory _$LocalWeather([void Function(LocalWeatherBuilder)? updates]) =>
      (new LocalWeatherBuilder()..update(updates)).build();

  _$LocalWeather._({required this.current}) : super._() {
    BuiltValueNullFieldError.checkNotNull(current, 'LocalWeather', 'current');
  }

  @override
  LocalWeather rebuild(void Function(LocalWeatherBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  LocalWeatherBuilder toBuilder() => new LocalWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalWeather && current == other.current;
  }

  @override
  int get hashCode {
    return $jf($jc(0, current.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocalWeather')..add('current', current)).toString();
  }
}

class LocalWeatherBuilder implements Builder<LocalWeather, LocalWeatherBuilder> {
  _$LocalWeather? _$v;

  CurrentBuilder? _current;

  CurrentBuilder get current => _$this._current ??= new CurrentBuilder();

  set current(CurrentBuilder? current) => _$this._current = current;

  LocalWeatherBuilder();

  LocalWeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _current = $v.current.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalWeather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalWeather;
  }

  @override
  void update(void Function(LocalWeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocalWeather build() {
    _$LocalWeather _$result;
    try {
      _$result = _$v ?? new _$LocalWeather._(current: current.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'current';
        current.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('LocalWeather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
