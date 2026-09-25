import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';

import 'network_config.dart';
import 'weather_retry_evaluator.dart';

Dio createDio({required String baseUrl}) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: NetworkConfig.connectTimeout,
      receiveTimeout: NetworkConfig.receiveTimeout,
      sendTimeout: NetworkConfig.sendTimeout,
      headers: const {'Accept': 'application/json'},
    ),
  );
  dio.interceptors.add(
    RetryInterceptor(
      dio: dio,
      retries: NetworkConfig.retries,
      retryDelays: NetworkConfig.retryDelays,
      retryEvaluator: weatherRetryEvaluator,
    ),
  );
  return dio;
}
