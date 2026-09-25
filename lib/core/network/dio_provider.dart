import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'dio_factory.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
String apiBaseUrl(Ref ref) {
  const defined = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://api.open-meteo.com',
  );
  return defined;
}

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  return createDio(baseUrl: ref.watch(apiBaseUrlProvider));
}
