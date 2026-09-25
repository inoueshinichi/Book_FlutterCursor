// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_meteo_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenMeteoForecast _$OpenMeteoForecastFromJson(Map<String, dynamic> json) =>
    _OpenMeteoForecast(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      current: OpenMeteoCurrent.fromJson(
        json['current'] as Map<String, dynamic>,
      ),
      hourly: OpenMeteoHourly.fromJson(json['hourly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OpenMeteoForecastToJson(_OpenMeteoForecast instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'current': instance.current,
      'hourly': instance.hourly,
    };

_OpenMeteoCurrent _$OpenMeteoCurrentFromJson(Map<String, dynamic> json) =>
    _OpenMeteoCurrent(
      time: json['time'] as String,
      temperature2m: (json['temperature_2m'] as num).toDouble(),
      weatherCode: (json['weather_code'] as num).toInt(),
    );

Map<String, dynamic> _$OpenMeteoCurrentToJson(_OpenMeteoCurrent instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'weather_code': instance.weatherCode,
    };

_OpenMeteoHourly _$OpenMeteoHourlyFromJson(Map<String, dynamic> json) =>
    _OpenMeteoHourly(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature2m: (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      weatherCode: (json['weather_code'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$OpenMeteoHourlyToJson(_OpenMeteoHourly instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'weather_code': instance.weatherCode,
    };
