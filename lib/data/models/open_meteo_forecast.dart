import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_meteo_forecast.freezed.dart';
part 'open_meteo_forecast.g.dart';

@freezed
abstract class OpenMeteoForecast with _$OpenMeteoForecast {
  const factory OpenMeteoForecast({
    required double latitude,
    required double longitude,
    required OpenMeteoCurrent current,
    required OpenMeteoHourly hourly,
  }) = _OpenMeteoForecast;

  factory OpenMeteoForecast.fromJson(Map<String, dynamic> json) =>
      _$OpenMeteoForecastFromJson(json);
}

@freezed
abstract class OpenMeteoCurrent with _$OpenMeteoCurrent {
  const factory OpenMeteoCurrent({
    required String time,
    @JsonKey(name: 'temperature_2m') required double temperature2m,
    @JsonKey(name: 'weather_code') required int weatherCode,
  }) = _OpenMeteoCurrent;

  factory OpenMeteoCurrent.fromJson(Map<String, dynamic> json) =>
      _$OpenMeteoCurrentFromJson(json);
}

@freezed
abstract class OpenMeteoHourly with _$OpenMeteoHourly {
  const factory OpenMeteoHourly({
    required List<String> time,
    @JsonKey(name: 'temperature_2m') required List<double> temperature2m,
    @JsonKey(name: 'weather_code') required List<int> weatherCode,
  }) = _OpenMeteoHourly;

  factory OpenMeteoHourly.fromJson(Map<String, dynamic> json) =>
      _$OpenMeteoHourlyFromJson(json);
}
