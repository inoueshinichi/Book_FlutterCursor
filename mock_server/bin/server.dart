import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';

const _cities = <String, Map<String, Object>>{
  '35.6895,139.6917': {
    'latitude': 35.6895,
    'longitude': 139.6917,
    'current': {
      'time': '2026-09-25T09:00',
      'temperature_2m': 22.5,
      'weather_code': 0,
    },
    'hourly': {
      'time': ['2026-09-25T10:00', '2026-09-25T11:00', '2026-09-25T12:00'],
      'temperature_2m': [23.0, 24.1, 25.2],
      'weather_code': [0, 1, 2],
    },
  },
  '34.6937,135.5023': {
    'latitude': 34.6937,
    'longitude': 135.5023,
    'current': {
      'time': '2026-09-25T09:00',
      'temperature_2m': 24.0,
      'weather_code': 1,
    },
    'hourly': {
      'time': ['2026-09-25T10:00', '2026-09-25T11:00', '2026-09-25T12:00'],
      'temperature_2m': [24.5, 25.0, 25.4],
      'weather_code': [1, 2, 3],
    },
  },
  '43.0618,141.3545': {
    'latitude': 43.0618,
    'longitude': 141.3545,
    'current': {
      'time': '2026-09-25T09:00',
      'temperature_2m': 16.2,
      'weather_code': 71,
    },
    'hourly': {
      'time': ['2026-09-25T10:00', '2026-09-25T11:00', '2026-09-25T12:00'],
      'temperature_2m': [16.0, 15.4, 14.8],
      'weather_code': [71, 73, 75],
    },
  },
  '33.5904,130.4017': {
    'latitude': 33.5904,
    'longitude': 130.4017,
    'current': {
      'time': '2026-09-25T09:00',
      'temperature_2m': 26.8,
      'weather_code': 61,
    },
    'hourly': {
      'time': ['2026-09-25T10:00', '2026-09-25T11:00', '2026-09-25T12:00'],
      'temperature_2m': [27.1, 27.5, 27.0],
      'weather_code': [61, 63, 80],
    },
  },
};

String _coordKey(double latitude, double longitude) {
  return '${latitude.toStringAsFixed(4)},${longitude.toStringAsFixed(4)}';
}

Response _json(int status, Object body) {
  return Response(
    status,
    body: jsonEncode(body),
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
  );
}

Future<void> main(List<String> args) async {
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final router = Router()..get('/v1/forecast', _forecast);

  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addHandler(router.call);

  final server = await shelf_io.serve(handler, InternetAddress.loopbackIPv4, port);
  stdout.writeln(
    'Open-Meteo mock listening on http://${server.address.host}:${server.port}',
  );
}

Response _forecast(Request request) {
  final fail = request.url.queryParameters['fail'];
  if (fail == '429') {
    return _json(429, {'error': true, 'reason': 'Too many requests'});
  }
  if (fail == '503') {
    return _json(503, {'error': true, 'reason': 'Service unavailable'});
  }

  final latitude = double.tryParse(request.url.queryParameters['latitude'] ?? '');
  final longitude = double.tryParse(request.url.queryParameters['longitude'] ?? '');
  if (latitude == null || longitude == null) {
    return _json(400, {'error': true, 'reason': 'latitude and longitude required'});
  }

  final payload = _cities[_coordKey(latitude, longitude)];
  if (payload == null) {
    return _json(400, {'error': true, 'reason': 'Unknown coordinates'});
  }
  return _json(200, payload);
}
