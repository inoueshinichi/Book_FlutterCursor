class NetworkConfig {
  const NetworkConfig._();

  static const connectTimeout = Duration(seconds: 8);
  static const receiveTimeout = Duration(seconds: 8);
  static const sendTimeout = Duration(seconds: 8);
  static const retries = 3;
  static const retryDelays = [
    Duration(milliseconds: 300),
    Duration(milliseconds: 600),
    Duration(milliseconds: 1200),
  ];
  static const retryableStatusCodes = {429, 503};
}
