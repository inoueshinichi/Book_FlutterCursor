import 'package:freezed_annotation/freezed_annotation.dart';

import '../cities.dart';
import '../wmo_weather.dart';
import 'open_meteo_forecast.dart';

part 'weather.freezed.dart';

@freezed
abstract class WeatherForecast with _$WeatherForecast {
  const factory WeatherForecast({
    required City city,
    required CurrentWeather current,
    required List<HourlyWeather> hourly,
  }) = _WeatherForecast;

  factory WeatherForecast.fromOpenMeteo({
    required City city,
    required OpenMeteoForecast dto,
  }) {
    final hourlyCount = [
      dto.hourly.time.length,
      dto.hourly.temperature2m.length,
      dto.hourly.weatherCode.length,
    ].reduce((a, b) => a < b ? a : b);
    final take = hourlyCount > 12 ? 12 : hourlyCount;

    return WeatherForecast(
      city: city,
      current: CurrentWeather(
        observedAt: DateTime.parse(dto.current.time),
        temperatureC: dto.current.temperature2m,
        condition: weatherConditionLabel(dto.current.weatherCode),
      ),
      hourly: [
        for (var i = 0; i < take; i++)
          HourlyWeather(
            at: DateTime.parse(dto.hourly.time[i]),
            temperatureC: dto.hourly.temperature2m[i],
            condition: weatherConditionLabel(dto.hourly.weatherCode[i]),
          ),
      ],
    );
  }
}

@freezed
abstract class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required DateTime observedAt,
    required double temperatureC,
    required String condition,
  }) = _CurrentWeather;
}

@freezed
abstract class HourlyWeather with _$HourlyWeather {
  const factory HourlyWeather({
    required DateTime at,
    required double temperatureC,
    required String condition,
  }) = _HourlyWeather;
}
