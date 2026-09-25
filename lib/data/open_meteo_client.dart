import 'package:dio/dio.dart';

import 'models/open_meteo_forecast.dart';

class OpenMeteoClient {
  OpenMeteoClient(this._dio);

  final Dio _dio;

  static const currentFields = 'temperature_2m,weather_code';
  static const hourlyFields = 'temperature_2m,weather_code';

  Future<OpenMeteoForecast> fetchForecast({
    required double latitude,
    required double longitude,
  }) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/v1/forecast',
      queryParameters: {
        'latitude': latitude,
        'longitude': longitude,
        'current': currentFields,
        'hourly': hourlyFields,
        'forecast_hours': 12,
        'timezone': 'auto',
      },
    );
    final data = response.data;
    if (data == null) {
      throw StateError('Open-Meteo response body was empty.');
    }
    return OpenMeteoForecast.fromJson(data);
  }
}
