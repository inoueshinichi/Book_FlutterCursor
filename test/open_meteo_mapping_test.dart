import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/core/network/dio_factory.dart';
import 'package:weather_app/core/network/network_config.dart';
import 'package:weather_app/data/cities.dart';
import 'package:weather_app/data/models/open_meteo_forecast.dart';
import 'package:weather_app/data/models/weather.dart';
import 'package:weather_app/data/open_meteo_client.dart';
import 'package:weather_app/data/wmo_weather.dart';
import 'package:weather_app/data/weather_exception.dart';
import 'package:weather_app/data/weather_repository.dart';

Map<String, dynamic> loadOpenMeteoFixture() {
  final json = File('test/fixtures/open_meteo_forecast.json').readAsStringSync();
  return jsonDecode(json) as Map<String, dynamic>;
}

void main() {
  test('parses Open-Meteo fixture JSON', () {
    final dto = OpenMeteoForecast.fromJson(loadOpenMeteoFixture());
    expect(dto.current.temperature2m, 22.5);
    expect(dto.hourly.time, hasLength(3));

    final forecast = WeatherForecast.fromOpenMeteo(
      city: Cities.tokyo,
      dto: dto,
    );
    expect(forecast.current.condition, 'Clear');
    expect(forecast.hourly.first.condition, 'Clear');
    expect(forecast.hourly[1].condition, 'Cloudy');
  });

  test('maps WMO weather codes', () {
    expect(weatherConditionLabel(0), 'Clear');
    expect(weatherConditionLabel(95), 'Thunderstorm');
  });

  test('retries 503 then succeeds', () async {
    final fixture = jsonEncode(loadOpenMeteoFixture());
    final dio = createDio(baseUrl: 'http://mock.local');
    var calls = 0;
    dio.httpClientAdapter = _ScriptedAdapter([
      () {
        calls += 1;
        return ResponseBody.fromString(
          '{"error":true}',
          503,
          headers: {
            Headers.contentTypeHeader: [Headers.jsonContentType],
          },
        );
      },
      () {
        calls += 1;
        return ResponseBody.fromString(
          fixture,
          200,
          headers: {
            Headers.contentTypeHeader: [Headers.jsonContentType],
          },
        );
      },
    ]);

    final forecast = await WeatherRepository(OpenMeteoClient(dio)).fetch(Cities.tokyo);
    expect(forecast.current.temperatureC, 22.5);
    expect(calls, 2);
  });

  test('retries 429 then succeeds', () async {
    final fixture = jsonEncode(loadOpenMeteoFixture());
    final dio = createDio(baseUrl: 'http://mock.local');
    var calls = 0;
    dio.httpClientAdapter = _ScriptedAdapter([
      () {
        calls += 1;
        return ResponseBody.fromString(
          '{"error":true}',
          429,
          headers: {
            Headers.contentTypeHeader: [Headers.jsonContentType],
          },
        );
      },
      () {
        calls += 1;
        return ResponseBody.fromString(
          fixture,
          200,
          headers: {
            Headers.contentTypeHeader: [Headers.jsonContentType],
          },
        );
      },
    ]);

    await WeatherRepository(OpenMeteoClient(dio)).fetch(Cities.tokyo);
    expect(calls, 2);
  });

  test('does not retry HTTP 400', () async {
    final dio = createDio(baseUrl: 'http://mock.local');
    var calls = 0;
    dio.httpClientAdapter = _ScriptedAdapter([
      () {
        calls += 1;
        return ResponseBody.fromString(
          '{"error":true}',
          400,
          headers: {
            Headers.contentTypeHeader: [Headers.jsonContentType],
          },
        );
      },
    ]);

    await expectLater(
      WeatherRepository(OpenMeteoClient(dio)).fetch(Cities.tokyo),
      throwsA(isA<WeatherException>()),
    );
    expect(calls, 1);
  });

  test('retry count is configured for exponential backoff', () {
    expect(NetworkConfig.retries, 3);
    expect(
      NetworkConfig.retryDelays[1].inMilliseconds,
      NetworkConfig.retryDelays[0].inMilliseconds * 2,
    );
    expect(
      NetworkConfig.retryDelays[2].inMilliseconds,
      NetworkConfig.retryDelays[1].inMilliseconds * 2,
    );
  });
}

class _ScriptedAdapter implements HttpClientAdapter {
  _ScriptedAdapter(this._handlers);

  final List<ResponseBody Function()> _handlers;
  var _index = 0;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    if (_index >= _handlers.length) {
      throw StateError('No scripted HTTP response left.');
    }
    return _handlers[_index++]();
  }

  @override
  void close({bool force = false}) {}
}
