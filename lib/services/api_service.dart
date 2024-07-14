import 'package:dio/dio.dart';
import '../utils/network_util.dart';

class ApiService {
  final Dio _dio;

  ApiService._internal(this._dio);

  factory ApiService(String instanceUrl, String accessToken) {
    final dio = Dio(BaseOptions(
      baseUrl: instanceUrl,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
    ));
    dio.interceptors.add(NetworkUtil.createLoggingInterceptor());
    return ApiService._internal(dio);
  }

  factory ApiService.auth() {
    final dio = Dio(BaseOptions(
      baseUrl: 'https://login.salesforce.com', // URL base de autenticación
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    ));
    dio.interceptors.add(NetworkUtil.createLoggingInterceptor());
    return ApiService._internal(dio);
  }

  Dio get dio => _dio;
}
