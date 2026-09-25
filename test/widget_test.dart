import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/cities.dart';
import 'package:weather_app/data/models/weather.dart';
import 'package:weather_app/data/weather_exception.dart';
import 'package:weather_app/data/weather_repository.dart';
import 'package:weather_app/features/weather/weather_notifier.dart';
import 'package:weather_app/main.dart';

WeatherForecast _forecastFor(City city) {
  return WeatherForecast(
    city: city,
    current: CurrentWeather(
      observedAt: DateTime(2026, 9, 25, 9),
      temperatureC: city == Cities.osaka ? 24.0 : 22.5,
      condition: 'Clear',
    ),
    hourly: [
      HourlyWeather(
        at: DateTime(2026, 9, 25, 10),
        temperatureC: 23,
        condition: 'Clear',
      ),
    ],
  );
}

class _ScriptedRepository implements WeatherRepository {
  _ScriptedRepository(this._fetch);

  final Future<WeatherForecast> Function(City city) _fetch;

  @override
  Future<WeatherForecast> fetch(City city) => _fetch(city);
}

Widget _app(WeatherRepository repository) {
  return ProviderScope(
    retry: (_, _) => null,
    overrides: [weatherRepositoryProvider.overrideWithValue(repository)],
    child: const WeatherApp(),
  );
}

void main() {
  testWidgets('shows Tokyo weather after loading', (tester) async {
    await tester.pumpWidget(
      _app(_ScriptedRepository((city) async => _forecastFor(city))),
    );

    expect(find.byKey(const Key('loadingIndicator')), findsOneWidget);

    await tester.pumpAndSettle();

    expect(find.text('Tokyo'), findsOneWidget);
    expect(find.text('22.5°C · Clear'), findsOneWidget);
    expect(find.text('10:00 · 23.0°C'), findsOneWidget);
  });

  testWidgets('shows an error and retries', (tester) async {
    var calls = 0;
    await tester.pumpWidget(
      _app(
        _ScriptedRepository((city) async {
          calls += 1;
          if (calls == 1) {
            throw const WeatherException('Weather request failed (HTTP 503).');
          }
          return _forecastFor(city);
        }),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Weather request failed (HTTP 503).'), findsOneWidget);
    expect(find.byKey(const Key('retryButton')), findsOneWidget);

    await tester.tap(find.byKey(const Key('retryButton')));
    await tester.pumpAndSettle();

    expect(find.text('22.5°C · Clear'), findsOneWidget);
    expect(calls, 2);
  });

  testWidgets('reloads when the city changes', (tester) async {
    final requested = <String>[];
    await tester.pumpWidget(
      _app(
        _ScriptedRepository((city) async {
          requested.add(city.id);
          return _forecastFor(city);
        }),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const Key('cityDropdown')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Osaka').last);
    await tester.pumpAndSettle();

    expect(requested, ['tokyo', 'osaka']);
    expect(find.text('24.0度 · 晴れ'), findsOneWidget);
  });
}
