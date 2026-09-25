// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(openMeteoClient)
final openMeteoClientProvider = OpenMeteoClientProvider._();

final class OpenMeteoClientProvider
    extends
        $FunctionalProvider<OpenMeteoClient, OpenMeteoClient, OpenMeteoClient>
    with $Provider<OpenMeteoClient> {
  OpenMeteoClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'openMeteoClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$openMeteoClientHash();

  @$internal
  @override
  $ProviderElement<OpenMeteoClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  OpenMeteoClient create(Ref ref) {
    return openMeteoClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OpenMeteoClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OpenMeteoClient>(value),
    );
  }
}

String _$openMeteoClientHash() => r'415a0468576460f55cbca5a5ae966a8671a5b2db';

@ProviderFor(weatherRepository)
final weatherRepositoryProvider = WeatherRepositoryProvider._();

final class WeatherRepositoryProvider
    extends
        $FunctionalProvider<
          WeatherRepository,
          WeatherRepository,
          WeatherRepository
        >
    with $Provider<WeatherRepository> {
  WeatherRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherRepositoryHash();

  @$internal
  @override
  $ProviderElement<WeatherRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  WeatherRepository create(Ref ref) {
    return weatherRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WeatherRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WeatherRepository>(value),
    );
  }
}

String _$weatherRepositoryHash() => r'87cb7f6e4598faac3e9ac74975785cd3079a6697';

@ProviderFor(SelectedCity)
final selectedCityProvider = SelectedCityProvider._();

final class SelectedCityProvider extends $NotifierProvider<SelectedCity, City> {
  SelectedCityProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedCityProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedCityHash();

  @$internal
  @override
  SelectedCity create() => SelectedCity();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(City value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<City>(value),
    );
  }
}

String _$selectedCityHash() => r'314221bf135b0dc0ea1e5b93065ad179a718b02d';

abstract class _$SelectedCity extends $Notifier<City> {
  City build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<City, City>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<City, City>,
              City,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(Weather)
final weatherProvider = WeatherProvider._();

final class WeatherProvider
    extends $AsyncNotifierProvider<Weather, WeatherForecast> {
  WeatherProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherHash();

  @$internal
  @override
  Weather create() => Weather();
}

String _$weatherHash() => r'034e50c760a26096180a60adc11f059c1bed3f5e';

abstract class _$Weather extends $AsyncNotifier<WeatherForecast> {
  FutureOr<WeatherForecast> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<WeatherForecast>, WeatherForecast>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<WeatherForecast>, WeatherForecast>,
              AsyncValue<WeatherForecast>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
