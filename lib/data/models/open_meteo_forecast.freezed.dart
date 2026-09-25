// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_meteo_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenMeteoForecast {

 double get latitude; double get longitude; OpenMeteoCurrent get current; OpenMeteoHourly get hourly;
/// Create a copy of OpenMeteoForecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenMeteoForecastCopyWith<OpenMeteoForecast> get copyWith => _$OpenMeteoForecastCopyWithImpl<OpenMeteoForecast>(this as OpenMeteoForecast, _$identity);

  /// Serializes this OpenMeteoForecast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenMeteoForecast&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.current, current) || other.current == current)&&(identical(other.hourly, hourly) || other.hourly == hourly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,current,hourly);

@override
String toString() {
  return 'OpenMeteoForecast(latitude: $latitude, longitude: $longitude, current: $current, hourly: $hourly)';
}


}

/// @nodoc
abstract mixin class $OpenMeteoForecastCopyWith<$Res>  {
  factory $OpenMeteoForecastCopyWith(OpenMeteoForecast value, $Res Function(OpenMeteoForecast) _then) = _$OpenMeteoForecastCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, OpenMeteoCurrent current, OpenMeteoHourly hourly
});


$OpenMeteoCurrentCopyWith<$Res> get current;$OpenMeteoHourlyCopyWith<$Res> get hourly;

}
/// @nodoc
class _$OpenMeteoForecastCopyWithImpl<$Res>
    implements $OpenMeteoForecastCopyWith<$Res> {
  _$OpenMeteoForecastCopyWithImpl(this._self, this._then);

  final OpenMeteoForecast _self;
  final $Res Function(OpenMeteoForecast) _then;

/// Create a copy of OpenMeteoForecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? current = null,Object? hourly = null,}) {
  return _then(OpenMeteoForecast(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as OpenMeteoCurrent,hourly: null == hourly ? _self.hourly : hourly // ignore: cast_nullable_to_non_nullable
as OpenMeteoHourly,
  ));
}
/// Create a copy of OpenMeteoForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenMeteoCurrentCopyWith<$Res> get current {
  
  return $OpenMeteoCurrentCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}/// Create a copy of OpenMeteoForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenMeteoHourlyCopyWith<$Res> get hourly {
  
  return $OpenMeteoHourlyCopyWith<$Res>(_self.hourly, (value) {
    return _then(_self.copyWith(hourly: value));
  });
}
}


/// Adds pattern-matching-related methods to [OpenMeteoForecast].
extension OpenMeteoForecastPatterns on OpenMeteoForecast {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenMeteoForecast value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenMeteoForecast() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenMeteoForecast value)  $default,){
final _that = this;
switch (_that) {
case _OpenMeteoForecast():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenMeteoForecast value)?  $default,){
final _that = this;
switch (_that) {
case _OpenMeteoForecast() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  OpenMeteoCurrent current,  OpenMeteoHourly hourly)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenMeteoForecast() when $default != null:
return $default(_that.latitude,_that.longitude,_that.current,_that.hourly);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  OpenMeteoCurrent current,  OpenMeteoHourly hourly)  $default,) {final _that = this;
switch (_that) {
case _OpenMeteoForecast():
return $default(_that.latitude,_that.longitude,_that.current,_that.hourly);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  OpenMeteoCurrent current,  OpenMeteoHourly hourly)?  $default,) {final _that = this;
switch (_that) {
case _OpenMeteoForecast() when $default != null:
return $default(_that.latitude,_that.longitude,_that.current,_that.hourly);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpenMeteoForecast implements OpenMeteoForecast {
  const _OpenMeteoForecast({required this.latitude, required this.longitude, required this.current, required this.hourly});
  factory _OpenMeteoForecast.fromJson(Map<String, dynamic> json) => _$OpenMeteoForecastFromJson(json);

@override final  double latitude;
@override final  double longitude;
@override final  OpenMeteoCurrent current;
@override final  OpenMeteoHourly hourly;

/// Create a copy of OpenMeteoForecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenMeteoForecastCopyWith<_OpenMeteoForecast> get copyWith => __$OpenMeteoForecastCopyWithImpl<_OpenMeteoForecast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenMeteoForecastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenMeteoForecast&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.current, current) || other.current == current)&&(identical(other.hourly, hourly) || other.hourly == hourly));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,current,hourly);

@override
String toString() {
  return 'OpenMeteoForecast(latitude: $latitude, longitude: $longitude, current: $current, hourly: $hourly)';
}


}

/// @nodoc
abstract mixin class _$OpenMeteoForecastCopyWith<$Res> implements $OpenMeteoForecastCopyWith<$Res> {
  factory _$OpenMeteoForecastCopyWith(_OpenMeteoForecast value, $Res Function(_OpenMeteoForecast) _then) = __$OpenMeteoForecastCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, OpenMeteoCurrent current, OpenMeteoHourly hourly
});


@override $OpenMeteoCurrentCopyWith<$Res> get current;@override $OpenMeteoHourlyCopyWith<$Res> get hourly;

}
/// @nodoc
class __$OpenMeteoForecastCopyWithImpl<$Res>
    implements _$OpenMeteoForecastCopyWith<$Res> {
  __$OpenMeteoForecastCopyWithImpl(this._self, this._then);

  final _OpenMeteoForecast _self;
  final $Res Function(_OpenMeteoForecast) _then;

/// Create a copy of OpenMeteoForecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? current = null,Object? hourly = null,}) {
  return _then(_OpenMeteoForecast(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as OpenMeteoCurrent,hourly: null == hourly ? _self.hourly : hourly // ignore: cast_nullable_to_non_nullable
as OpenMeteoHourly,
  ));
}

/// Create a copy of OpenMeteoForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenMeteoCurrentCopyWith<$Res> get current {
  
  return $OpenMeteoCurrentCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}/// Create a copy of OpenMeteoForecast
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenMeteoHourlyCopyWith<$Res> get hourly {
  
  return $OpenMeteoHourlyCopyWith<$Res>(_self.hourly, (value) {
    return _then(_self.copyWith(hourly: value));
  });
}
}


/// @nodoc
mixin _$OpenMeteoCurrent {

 String get time;@JsonKey(name: 'temperature_2m') double get temperature2m;@JsonKey(name: 'weather_code') int get weatherCode;
/// Create a copy of OpenMeteoCurrent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenMeteoCurrentCopyWith<OpenMeteoCurrent> get copyWith => _$OpenMeteoCurrentCopyWithImpl<OpenMeteoCurrent>(this as OpenMeteoCurrent, _$identity);

  /// Serializes this OpenMeteoCurrent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenMeteoCurrent&&(identical(other.time, time) || other.time == time)&&(identical(other.temperature2m, temperature2m) || other.temperature2m == temperature2m)&&(identical(other.weatherCode, weatherCode) || other.weatherCode == weatherCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,temperature2m,weatherCode);

@override
String toString() {
  return 'OpenMeteoCurrent(time: $time, temperature2m: $temperature2m, weatherCode: $weatherCode)';
}


}

/// @nodoc
abstract mixin class $OpenMeteoCurrentCopyWith<$Res>  {
  factory $OpenMeteoCurrentCopyWith(OpenMeteoCurrent value, $Res Function(OpenMeteoCurrent) _then) = _$OpenMeteoCurrentCopyWithImpl;
@useResult
$Res call({
 String time,@JsonKey(name: 'temperature_2m') double temperature2m,@JsonKey(name: 'weather_code') int weatherCode
});




}
/// @nodoc
class _$OpenMeteoCurrentCopyWithImpl<$Res>
    implements $OpenMeteoCurrentCopyWith<$Res> {
  _$OpenMeteoCurrentCopyWithImpl(this._self, this._then);

  final OpenMeteoCurrent _self;
  final $Res Function(OpenMeteoCurrent) _then;

/// Create a copy of OpenMeteoCurrent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? temperature2m = null,Object? weatherCode = null,}) {
  return _then(OpenMeteoCurrent(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,temperature2m: null == temperature2m ? _self.temperature2m : temperature2m // ignore: cast_nullable_to_non_nullable
as double,weatherCode: null == weatherCode ? _self.weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenMeteoCurrent].
extension OpenMeteoCurrentPatterns on OpenMeteoCurrent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenMeteoCurrent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenMeteoCurrent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenMeteoCurrent value)  $default,){
final _that = this;
switch (_that) {
case _OpenMeteoCurrent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenMeteoCurrent value)?  $default,){
final _that = this;
switch (_that) {
case _OpenMeteoCurrent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String time, @JsonKey(name: 'temperature_2m')  double temperature2m, @JsonKey(name: 'weather_code')  int weatherCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenMeteoCurrent() when $default != null:
return $default(_that.time,_that.temperature2m,_that.weatherCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String time, @JsonKey(name: 'temperature_2m')  double temperature2m, @JsonKey(name: 'weather_code')  int weatherCode)  $default,) {final _that = this;
switch (_that) {
case _OpenMeteoCurrent():
return $default(_that.time,_that.temperature2m,_that.weatherCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String time, @JsonKey(name: 'temperature_2m')  double temperature2m, @JsonKey(name: 'weather_code')  int weatherCode)?  $default,) {final _that = this;
switch (_that) {
case _OpenMeteoCurrent() when $default != null:
return $default(_that.time,_that.temperature2m,_that.weatherCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpenMeteoCurrent implements OpenMeteoCurrent {
  const _OpenMeteoCurrent({required this.time, @JsonKey(name: 'temperature_2m') required this.temperature2m, @JsonKey(name: 'weather_code') required this.weatherCode});
  factory _OpenMeteoCurrent.fromJson(Map<String, dynamic> json) => _$OpenMeteoCurrentFromJson(json);

@override final  String time;
@override@JsonKey(name: 'temperature_2m') final  double temperature2m;
@override@JsonKey(name: 'weather_code') final  int weatherCode;

/// Create a copy of OpenMeteoCurrent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenMeteoCurrentCopyWith<_OpenMeteoCurrent> get copyWith => __$OpenMeteoCurrentCopyWithImpl<_OpenMeteoCurrent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenMeteoCurrentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenMeteoCurrent&&(identical(other.time, time) || other.time == time)&&(identical(other.temperature2m, temperature2m) || other.temperature2m == temperature2m)&&(identical(other.weatherCode, weatherCode) || other.weatherCode == weatherCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,temperature2m,weatherCode);

@override
String toString() {
  return 'OpenMeteoCurrent(time: $time, temperature2m: $temperature2m, weatherCode: $weatherCode)';
}


}

/// @nodoc
abstract mixin class _$OpenMeteoCurrentCopyWith<$Res> implements $OpenMeteoCurrentCopyWith<$Res> {
  factory _$OpenMeteoCurrentCopyWith(_OpenMeteoCurrent value, $Res Function(_OpenMeteoCurrent) _then) = __$OpenMeteoCurrentCopyWithImpl;
@override @useResult
$Res call({
 String time,@JsonKey(name: 'temperature_2m') double temperature2m,@JsonKey(name: 'weather_code') int weatherCode
});




}
/// @nodoc
class __$OpenMeteoCurrentCopyWithImpl<$Res>
    implements _$OpenMeteoCurrentCopyWith<$Res> {
  __$OpenMeteoCurrentCopyWithImpl(this._self, this._then);

  final _OpenMeteoCurrent _self;
  final $Res Function(_OpenMeteoCurrent) _then;

/// Create a copy of OpenMeteoCurrent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? temperature2m = null,Object? weatherCode = null,}) {
  return _then(_OpenMeteoCurrent(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,temperature2m: null == temperature2m ? _self.temperature2m : temperature2m // ignore: cast_nullable_to_non_nullable
as double,weatherCode: null == weatherCode ? _self.weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$OpenMeteoHourly {

 List<String> get time;@JsonKey(name: 'temperature_2m') List<double> get temperature2m;@JsonKey(name: 'weather_code') List<int> get weatherCode;
/// Create a copy of OpenMeteoHourly
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenMeteoHourlyCopyWith<OpenMeteoHourly> get copyWith => _$OpenMeteoHourlyCopyWithImpl<OpenMeteoHourly>(this as OpenMeteoHourly, _$identity);

  /// Serializes this OpenMeteoHourly to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenMeteoHourly&&const DeepCollectionEquality().equals(other.time, time)&&const DeepCollectionEquality().equals(other.temperature2m, temperature2m)&&const DeepCollectionEquality().equals(other.weatherCode, weatherCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(time),const DeepCollectionEquality().hash(temperature2m),const DeepCollectionEquality().hash(weatherCode));

@override
String toString() {
  return 'OpenMeteoHourly(time: $time, temperature2m: $temperature2m, weatherCode: $weatherCode)';
}


}

/// @nodoc
abstract mixin class $OpenMeteoHourlyCopyWith<$Res>  {
  factory $OpenMeteoHourlyCopyWith(OpenMeteoHourly value, $Res Function(OpenMeteoHourly) _then) = _$OpenMeteoHourlyCopyWithImpl;
@useResult
$Res call({
 List<String> time,@JsonKey(name: 'temperature_2m') List<double> temperature2m,@JsonKey(name: 'weather_code') List<int> weatherCode
});




}
/// @nodoc
class _$OpenMeteoHourlyCopyWithImpl<$Res>
    implements $OpenMeteoHourlyCopyWith<$Res> {
  _$OpenMeteoHourlyCopyWithImpl(this._self, this._then);

  final OpenMeteoHourly _self;
  final $Res Function(OpenMeteoHourly) _then;

/// Create a copy of OpenMeteoHourly
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? temperature2m = null,Object? weatherCode = null,}) {
  return _then(OpenMeteoHourly(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as List<String>,temperature2m: null == temperature2m ? _self.temperature2m : temperature2m // ignore: cast_nullable_to_non_nullable
as List<double>,weatherCode: null == weatherCode ? _self.weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenMeteoHourly].
extension OpenMeteoHourlyPatterns on OpenMeteoHourly {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenMeteoHourly value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenMeteoHourly() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenMeteoHourly value)  $default,){
final _that = this;
switch (_that) {
case _OpenMeteoHourly():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenMeteoHourly value)?  $default,){
final _that = this;
switch (_that) {
case _OpenMeteoHourly() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> time, @JsonKey(name: 'temperature_2m')  List<double> temperature2m, @JsonKey(name: 'weather_code')  List<int> weatherCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenMeteoHourly() when $default != null:
return $default(_that.time,_that.temperature2m,_that.weatherCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> time, @JsonKey(name: 'temperature_2m')  List<double> temperature2m, @JsonKey(name: 'weather_code')  List<int> weatherCode)  $default,) {final _that = this;
switch (_that) {
case _OpenMeteoHourly():
return $default(_that.time,_that.temperature2m,_that.weatherCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> time, @JsonKey(name: 'temperature_2m')  List<double> temperature2m, @JsonKey(name: 'weather_code')  List<int> weatherCode)?  $default,) {final _that = this;
switch (_that) {
case _OpenMeteoHourly() when $default != null:
return $default(_that.time,_that.temperature2m,_that.weatherCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpenMeteoHourly implements OpenMeteoHourly {
  const _OpenMeteoHourly({required  List<String> time, @JsonKey(name: 'temperature_2m') required  List<double> temperature2m, @JsonKey(name: 'weather_code') required  List<int> weatherCode}): _time = time,_temperature2m = temperature2m,_weatherCode = weatherCode;
  factory _OpenMeteoHourly.fromJson(Map<String, dynamic> json) => _$OpenMeteoHourlyFromJson(json);

 final  List<String> _time;
@override List<String> get time {
  if (_time is EqualUnmodifiableListView) return _time;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_time);
}

 final  List<double> _temperature2m;
@override@JsonKey(name: 'temperature_2m') List<double> get temperature2m {
  if (_temperature2m is EqualUnmodifiableListView) return _temperature2m;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temperature2m);
}

 final  List<int> _weatherCode;
@override@JsonKey(name: 'weather_code') List<int> get weatherCode {
  if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weatherCode);
}


/// Create a copy of OpenMeteoHourly
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenMeteoHourlyCopyWith<_OpenMeteoHourly> get copyWith => __$OpenMeteoHourlyCopyWithImpl<_OpenMeteoHourly>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenMeteoHourlyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenMeteoHourly&&const DeepCollectionEquality().equals(other._time, _time)&&const DeepCollectionEquality().equals(other._temperature2m, _temperature2m)&&const DeepCollectionEquality().equals(other._weatherCode, _weatherCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_time),const DeepCollectionEquality().hash(_temperature2m),const DeepCollectionEquality().hash(_weatherCode));

@override
String toString() {
  return 'OpenMeteoHourly(time: $time, temperature2m: $temperature2m, weatherCode: $weatherCode)';
}


}

/// @nodoc
abstract mixin class _$OpenMeteoHourlyCopyWith<$Res> implements $OpenMeteoHourlyCopyWith<$Res> {
  factory _$OpenMeteoHourlyCopyWith(_OpenMeteoHourly value, $Res Function(_OpenMeteoHourly) _then) = __$OpenMeteoHourlyCopyWithImpl;
@override @useResult
$Res call({
 List<String> time,@JsonKey(name: 'temperature_2m') List<double> temperature2m,@JsonKey(name: 'weather_code') List<int> weatherCode
});




}
/// @nodoc
class __$OpenMeteoHourlyCopyWithImpl<$Res>
    implements _$OpenMeteoHourlyCopyWith<$Res> {
  __$OpenMeteoHourlyCopyWithImpl(this._self, this._then);

  final _OpenMeteoHourly _self;
  final $Res Function(_OpenMeteoHourly) _then;

/// Create a copy of OpenMeteoHourly
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? temperature2m = null,Object? weatherCode = null,}) {
  return _then(_OpenMeteoHourly(
time: null == time ? _self._time : time // ignore: cast_nullable_to_non_nullable
as List<String>,temperature2m: null == temperature2m ? _self._temperature2m : temperature2m // ignore: cast_nullable_to_non_nullable
as List<double>,weatherCode: null == weatherCode ? _self._weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
