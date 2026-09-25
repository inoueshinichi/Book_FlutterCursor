import 'package:dio/dio.dart';

class WeatherException implements Exception {
  const WeatherException(this.message);

  final String message;

  factory WeatherException.fromDio(DioException error) {
    final statusCode = error.response?.statusCode;
    if (statusCode != null) {
      return WeatherException('Weather request failed (HTTP $statusCode).');
    }
    return const WeatherException(
      'Weather request failed. Check your connection and try again.',
    );
  }

  @override
  String toString() => message;
}
