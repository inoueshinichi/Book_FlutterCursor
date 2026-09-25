import 'dart:async';

import 'package:dio/dio.dart';

import 'network_config.dart';

FutureOr<bool> weatherRetryEvaluator(DioException error, int attempt) {
  if (error.type == DioExceptionType.cancel) {
    return false;
  }
  if (error.type == DioExceptionType.connectionTimeout ||
      error.type == DioExceptionType.sendTimeout ||
      error.type == DioExceptionType.receiveTimeout) {
    return true;
  }
  final statusCode = error.response?.statusCode;
  return statusCode != null &&
      NetworkConfig.retryableStatusCodes.contains(statusCode);
}
