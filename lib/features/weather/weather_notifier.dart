import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/network/dio_provider.dart';
import '../../data/cities.dart';
import '../../data/models/weather.dart';
import '../../data/open_meteo_client.dart';
import '../../data/weather_repository.dart';

part 'weather_notifier.g.dart';

@Riverpod(keepAlive: true)
OpenMeteoClient openMeteoClient(Ref ref) {
  return OpenMeteoClient(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
WeatherRepository weatherRepository(Ref ref) {
  return WeatherRepository(ref.watch(openMeteoClientProvider));
}

@riverpod
class SelectedCity extends _$SelectedCity {
  @override
  City build() => Cities.defaultCity;

  void select(City city) {
    state = city;
  }
}

@riverpod
class Weather extends _$Weather {
  @override
  Future<WeatherForecast> build() {
    final city = ref.watch(selectedCityProvider);
    return ref.watch(weatherRepositoryProvider).fetch(city);
  }

  Future<void> retry() async {
    ref.invalidateSelf();
    await future;
  }
}
