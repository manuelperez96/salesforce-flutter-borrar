import 'package:dio/dio.dart';
import '../utils/network_util.dart';

/// Service class for managing API requests.
class ApiService {
  final Dio _dio;

  ApiService._internal(this._dio);

  /// Factory constructor for creating an [ApiService] with the given [instanceUrl] and [accessToken].
  factory ApiService(String instanceUrl, String accessToken) {
    final dio = Dio(BaseOptions(
      baseUrl: instanceUrl,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
    ));

    // Add logging interceptor using NetworkUtil
    dio.interceptors.add(NetworkUtil.createLoggingInterceptor());

    return ApiService._internal(dio);
  }

  /// Factory constructor for creating an [ApiService] for authentication requests.
  factory ApiService.auth() {
    final dio = Dio(BaseOptions(
      baseUrl: 'https://login.salesforce.com',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    ));

    // Add logging interceptor using NetworkUtil
    dio.interceptors.add(NetworkUtil.createLoggingInterceptor());

    return ApiService._internal(dio);
  }

  /// Getter for the Dio instance.
  Dio get dio => _dio;
}
