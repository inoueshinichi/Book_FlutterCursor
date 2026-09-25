import 'package:dio/dio.dart';

import 'cities.dart';
import 'models/weather.dart';
import 'open_meteo_client.dart';
import 'weather_exception.dart';

class WeatherRepository {
  WeatherRepository(this._client);

  final OpenMeteoClient _client;

  Future<WeatherForecast> fetch(City city) async {
    try {
      final dto = await _client.fetchForecast(
        latitude: city.latitude,
        longitude: city.longitude,
      );
      return WeatherForecast.fromOpenMeteo(city: city, dto: dto);
    } on DioException catch (error) {
      throw WeatherException.fromDio(error);
    } on FormatException catch (_) {
      throw const WeatherException('Weather response could not be parsed.');
    }
  }
}
