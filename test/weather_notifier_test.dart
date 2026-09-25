import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_app/data/cities.dart';
import 'package:weather_app/data/models/weather.dart';
import 'package:weather_app/data/weather_exception.dart';
import 'package:weather_app/data/weather_repository.dart';
import 'package:weather_app/features/weather/weather_notifier.dart';

class _MockWeatherRepository extends Mock implements WeatherRepository {}

WeatherForecast _forecast(City city) {
  return WeatherForecast(
    city: city,
    current: CurrentWeather(
      observedAt: DateTime.utc(2026, 9, 25, 9),
      temperatureC: 22.5,
      condition: 'Clear',
    ),
    hourly: [
      HourlyWeather(
        at: DateTime.utc(2026, 9, 25, 10),
        temperatureC: 23,
        condition: 'Clear',
      ),
    ],
  );
}

void main() {
  late _MockWeatherRepository repository;

  setUp(() {
    repository = _MockWeatherRepository();
  });

  ProviderContainer container() {
    final scope = ProviderContainer(
      retry: (_, _) => null,
      overrides: [weatherRepositoryProvider.overrideWithValue(repository)],
    );
    addTearDown(scope.dispose);
    return scope;
  }

  test('loads Tokyo on startup', () async {
    when(() => repository.fetch(Cities.tokyo)).thenAnswer(
      (_) async => _forecast(Cities.tokyo),
    );

    final forecast = await container().read(weatherProvider.future);

    expect(forecast.city.id, 'tokyo');
    expect(forecast.current.temperatureC, 22.5);
    verify(() => repository.fetch(Cities.tokyo)).called(1);
  });

  test('exposes the failure and succeeds on retry', () async {
    var calls = 0;
    when(() => repository.fetch(Cities.tokyo)).thenAnswer((_) async {
      calls += 1;
      if (calls == 1) {
        throw const WeatherException('Weather request failed (HTTP 503).');
      }
      return _forecast(Cities.tokyo);
    });

    final scope = container();
    scope.listen(weatherProvider, (_, _) {});
    await expectLater(
      scope.read(weatherProvider.future),
      throwsA(isA<WeatherException>()),
    );

    await scope.read(weatherProvider.notifier).retry();

    expect(scope.read(weatherProvider).requireValue.current.condition, 'Clear');
    expect(calls, 2);
  });

  test('fetches again when the selected city changes', () async {
    when(() => repository.fetch(Cities.tokyo)).thenAnswer(
      (_) async => _forecast(Cities.tokyo),
    );
    when(() => repository.fetch(Cities.osaka)).thenAnswer(
      (_) async => _forecast(Cities.osaka),
    );

    final scope = container();
    await scope.read(weatherProvider.future);
    scope.read(selectedCityProvider.notifier).select(Cities.osaka);
    final forecast = await scope.read(weatherProvider.future);

    expect(forecast.city.id, 'osaka');
    verify(() => repository.fetch(Cities.osaka)).called(1);
  });
}
