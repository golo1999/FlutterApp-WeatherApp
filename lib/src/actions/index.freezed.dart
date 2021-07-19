// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetLocationTearOff {
  const _$GetLocationTearOff();

  GetLocationStart call() {
    return const GetLocationStart();
  }

  GetLocationSuccessful successful(Location location) {
    return GetLocationSuccessful(
      location,
    );
  }

  GetLocationError error(Object error, StackTrace stackTrace) {
    return GetLocationError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetLocation = _$GetLocationTearOff();

/// @nodoc
mixin _$GetLocation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Location location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Location location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationStart value) $default, {
    required TResult Function(GetLocationSuccessful value) successful,
    required TResult Function(GetLocationError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationStart value)? $default, {
    TResult Function(GetLocationSuccessful value)? successful,
    TResult Function(GetLocationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationCopyWith<$Res> {
  factory $GetLocationCopyWith(GetLocation value, $Res Function(GetLocation) then) = _$GetLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocationCopyWithImpl<$Res> implements $GetLocationCopyWith<$Res> {
  _$GetLocationCopyWithImpl(this._value, this._then);

  final GetLocation _value;

  // ignore: unused_field
  final $Res Function(GetLocation) _then;
}

/// @nodoc
abstract class $GetLocationStartCopyWith<$Res> {
  factory $GetLocationStartCopyWith(GetLocationStart value, $Res Function(GetLocationStart) then) =
      _$GetLocationStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocationStartCopyWithImpl<$Res> extends _$GetLocationCopyWithImpl<$Res>
    implements $GetLocationStartCopyWith<$Res> {
  _$GetLocationStartCopyWithImpl(GetLocationStart _value, $Res Function(GetLocationStart) _then)
      : super(_value, (v) => _then(v as GetLocationStart));

  @override
  GetLocationStart get _value => super._value as GetLocationStart;
}

/// @nodoc

class _$GetLocationStart implements GetLocationStart {
  const _$GetLocationStart();

  @override
  String toString() {
    return 'GetLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetLocationStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Location location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Location location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationStart value) $default, {
    required TResult Function(GetLocationSuccessful value) successful,
    required TResult Function(GetLocationError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationStart value)? $default, {
    TResult Function(GetLocationSuccessful value)? successful,
    TResult Function(GetLocationError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetLocationStart implements GetLocation {
  const factory GetLocationStart() = _$GetLocationStart;
}

/// @nodoc
abstract class $GetLocationSuccessfulCopyWith<$Res> {
  factory $GetLocationSuccessfulCopyWith(GetLocationSuccessful value, $Res Function(GetLocationSuccessful) then) =
      _$GetLocationSuccessfulCopyWithImpl<$Res>;

  $Res call({Location location});
}

/// @nodoc
class _$GetLocationSuccessfulCopyWithImpl<$Res> extends _$GetLocationCopyWithImpl<$Res>
    implements $GetLocationSuccessfulCopyWith<$Res> {
  _$GetLocationSuccessfulCopyWithImpl(GetLocationSuccessful _value, $Res Function(GetLocationSuccessful) _then)
      : super(_value, (v) => _then(v as GetLocationSuccessful));

  @override
  GetLocationSuccessful get _value => super._value as GetLocationSuccessful;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(GetLocationSuccessful(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }
}

/// @nodoc

class _$GetLocationSuccessful implements GetLocationSuccessful {
  const _$GetLocationSuccessful(this.location);

  @override
  final Location location;

  @override
  String toString() {
    return 'GetLocation.successful(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLocationSuccessful &&
            (identical(other.location, location) || const DeepCollectionEquality().equals(other.location, location)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  $GetLocationSuccessfulCopyWith<GetLocationSuccessful> get copyWith =>
      _$GetLocationSuccessfulCopyWithImpl<GetLocationSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Location location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Location location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationStart value) $default, {
    required TResult Function(GetLocationSuccessful value) successful,
    required TResult Function(GetLocationError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationStart value)? $default, {
    TResult Function(GetLocationSuccessful value)? successful,
    TResult Function(GetLocationError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetLocationSuccessful implements GetLocation {
  const factory GetLocationSuccessful(Location location) = _$GetLocationSuccessful;

  Location get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetLocationSuccessfulCopyWith<GetLocationSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocationErrorCopyWith<$Res> {
  factory $GetLocationErrorCopyWith(GetLocationError value, $Res Function(GetLocationError) then) =
      _$GetLocationErrorCopyWithImpl<$Res>;

  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetLocationErrorCopyWithImpl<$Res> extends _$GetLocationCopyWithImpl<$Res>
    implements $GetLocationErrorCopyWith<$Res> {
  _$GetLocationErrorCopyWithImpl(GetLocationError _value, $Res Function(GetLocationError) _then)
      : super(_value, (v) => _then(v as GetLocationError));

  @override
  GetLocationError get _value => super._value as GetLocationError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetLocationError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetLocationError implements GetLocationError {
  const _$GetLocationError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetLocation.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLocationError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetLocationErrorCopyWith<GetLocationError> get copyWith =>
      _$GetLocationErrorCopyWithImpl<GetLocationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Location location) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Location location)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocationStart value) $default, {
    required TResult Function(GetLocationSuccessful value) successful,
    required TResult Function(GetLocationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocationStart value)? $default, {
    TResult Function(GetLocationSuccessful value)? successful,
    TResult Function(GetLocationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetLocationError implements GetLocation, ErrorAction {
  const factory GetLocationError(Object error, StackTrace stackTrace) = _$GetLocationError;

  Object get error => throw _privateConstructorUsedError;

  StackTrace get stackTrace => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetLocationErrorCopyWith<GetLocationError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetLocalWeatherTearOff {
  const _$GetLocalWeatherTearOff();

  GetLocalWeatherStart call() {
    return const GetLocalWeatherStart();
  }

  GetLocalWeatherSuccessful successful(LocalWeather localWeather) {
    return GetLocalWeatherSuccessful(
      localWeather,
    );
  }

  GetLocalWeatherError error(Object error, StackTrace stackTrace) {
    return GetLocalWeatherError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetLocalWeather = _$GetLocalWeatherTearOff();

/// @nodoc
mixin _$GetLocalWeather {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(LocalWeather localWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(LocalWeather localWeather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocalWeatherStart value) $default, {
    required TResult Function(GetLocalWeatherSuccessful value) successful,
    required TResult Function(GetLocalWeatherError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocalWeatherStart value)? $default, {
    TResult Function(GetLocalWeatherSuccessful value)? successful,
    TResult Function(GetLocalWeatherError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocalWeatherCopyWith<$Res> {
  factory $GetLocalWeatherCopyWith(GetLocalWeather value, $Res Function(GetLocalWeather) then) =
      _$GetLocalWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocalWeatherCopyWithImpl<$Res> implements $GetLocalWeatherCopyWith<$Res> {
  _$GetLocalWeatherCopyWithImpl(this._value, this._then);

  final GetLocalWeather _value;

  // ignore: unused_field
  final $Res Function(GetLocalWeather) _then;
}

/// @nodoc
abstract class $GetLocalWeatherStartCopyWith<$Res> {
  factory $GetLocalWeatherStartCopyWith(GetLocalWeatherStart value, $Res Function(GetLocalWeatherStart) then) =
      _$GetLocalWeatherStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLocalWeatherStartCopyWithImpl<$Res> extends _$GetLocalWeatherCopyWithImpl<$Res>
    implements $GetLocalWeatherStartCopyWith<$Res> {
  _$GetLocalWeatherStartCopyWithImpl(GetLocalWeatherStart _value, $Res Function(GetLocalWeatherStart) _then)
      : super(_value, (v) => _then(v as GetLocalWeatherStart));

  @override
  GetLocalWeatherStart get _value => super._value as GetLocalWeatherStart;
}

/// @nodoc

class _$GetLocalWeatherStart implements GetLocalWeatherStart {
  const _$GetLocalWeatherStart();

  @override
  String toString() {
    return 'GetLocalWeather()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetLocalWeatherStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(LocalWeather localWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(LocalWeather localWeather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocalWeatherStart value) $default, {
    required TResult Function(GetLocalWeatherSuccessful value) successful,
    required TResult Function(GetLocalWeatherError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocalWeatherStart value)? $default, {
    TResult Function(GetLocalWeatherSuccessful value)? successful,
    TResult Function(GetLocalWeatherError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetLocalWeatherStart implements GetLocalWeather {
  const factory GetLocalWeatherStart() = _$GetLocalWeatherStart;
}

/// @nodoc
abstract class $GetLocalWeatherSuccessfulCopyWith<$Res> {
  factory $GetLocalWeatherSuccessfulCopyWith(
          GetLocalWeatherSuccessful value, $Res Function(GetLocalWeatherSuccessful) then) =
      _$GetLocalWeatherSuccessfulCopyWithImpl<$Res>;

  $Res call({LocalWeather localWeather});
}

/// @nodoc
class _$GetLocalWeatherSuccessfulCopyWithImpl<$Res> extends _$GetLocalWeatherCopyWithImpl<$Res>
    implements $GetLocalWeatherSuccessfulCopyWith<$Res> {
  _$GetLocalWeatherSuccessfulCopyWithImpl(
      GetLocalWeatherSuccessful _value, $Res Function(GetLocalWeatherSuccessful) _then)
      : super(_value, (v) => _then(v as GetLocalWeatherSuccessful));

  @override
  GetLocalWeatherSuccessful get _value => super._value as GetLocalWeatherSuccessful;

  @override
  $Res call({
    Object? localWeather = freezed,
  }) {
    return _then(GetLocalWeatherSuccessful(
      localWeather == freezed
          ? _value.localWeather
          : localWeather // ignore: cast_nullable_to_non_nullable
              as LocalWeather,
    ));
  }
}

/// @nodoc

class _$GetLocalWeatherSuccessful implements GetLocalWeatherSuccessful {
  const _$GetLocalWeatherSuccessful(this.localWeather);

  @override
  final LocalWeather localWeather;

  @override
  String toString() {
    return 'GetLocalWeather.successful(localWeather: $localWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLocalWeatherSuccessful &&
            (identical(other.localWeather, localWeather) ||
                const DeepCollectionEquality().equals(other.localWeather, localWeather)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(localWeather);

  @JsonKey(ignore: true)
  @override
  $GetLocalWeatherSuccessfulCopyWith<GetLocalWeatherSuccessful> get copyWith =>
      _$GetLocalWeatherSuccessfulCopyWithImpl<GetLocalWeatherSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(LocalWeather localWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(localWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(LocalWeather localWeather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(localWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocalWeatherStart value) $default, {
    required TResult Function(GetLocalWeatherSuccessful value) successful,
    required TResult Function(GetLocalWeatherError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocalWeatherStart value)? $default, {
    TResult Function(GetLocalWeatherSuccessful value)? successful,
    TResult Function(GetLocalWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetLocalWeatherSuccessful implements GetLocalWeather {
  const factory GetLocalWeatherSuccessful(LocalWeather localWeather) = _$GetLocalWeatherSuccessful;

  LocalWeather get localWeather => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetLocalWeatherSuccessfulCopyWith<GetLocalWeatherSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocalWeatherErrorCopyWith<$Res> {
  factory $GetLocalWeatherErrorCopyWith(GetLocalWeatherError value, $Res Function(GetLocalWeatherError) then) =
      _$GetLocalWeatherErrorCopyWithImpl<$Res>;

  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetLocalWeatherErrorCopyWithImpl<$Res> extends _$GetLocalWeatherCopyWithImpl<$Res>
    implements $GetLocalWeatherErrorCopyWith<$Res> {
  _$GetLocalWeatherErrorCopyWithImpl(GetLocalWeatherError _value, $Res Function(GetLocalWeatherError) _then)
      : super(_value, (v) => _then(v as GetLocalWeatherError));

  @override
  GetLocalWeatherError get _value => super._value as GetLocalWeatherError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetLocalWeatherError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements(ErrorAction)
class _$GetLocalWeatherError implements GetLocalWeatherError {
  const _$GetLocalWeatherError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetLocalWeather.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetLocalWeatherError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.stackTrace, stackTrace) ||
                const DeepCollectionEquality().equals(other.stackTrace, stackTrace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetLocalWeatherErrorCopyWith<GetLocalWeatherError> get copyWith =>
      _$GetLocalWeatherErrorCopyWithImpl<GetLocalWeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(LocalWeather localWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(LocalWeather localWeather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetLocalWeatherStart value) $default, {
    required TResult Function(GetLocalWeatherSuccessful value) successful,
    required TResult Function(GetLocalWeatherError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetLocalWeatherStart value)? $default, {
    TResult Function(GetLocalWeatherSuccessful value)? successful,
    TResult Function(GetLocalWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetLocalWeatherError implements GetLocalWeather, ErrorAction {
  const factory GetLocalWeatherError(Object error, StackTrace stackTrace) = _$GetLocalWeatherError;

  Object get error => throw _privateConstructorUsedError;

  StackTrace get stackTrace => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetLocalWeatherErrorCopyWith<GetLocalWeatherError> get copyWith => throw _privateConstructorUsedError;
}
