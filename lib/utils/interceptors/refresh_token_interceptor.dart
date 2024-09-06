import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/models/responses/access_token/access_token.dart';
import 'package:sf_commerce_sdk/utils/interceptors/token_storage.dart';

class RefreshTokenInterceptor extends QueuedInterceptor {
  RefreshTokenInterceptor({
    required String organizationId,
    required String host,
    required TokenStorage storage,
    required String clientId,
  })  : _organizationId = organizationId,
        _host = host,
        _storage = storage,
        _clientId = clientId;

  final String _organizationId;
  final String _host;
  final String _clientId;
  final TokenStorage _storage;

  late final _refreshTokenUrl =
      '$_host/shopper/auth/v1/organizations/$_organizationId/oauth2/token';

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    await _addAuthHeader(options.headers);

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      try {
        await _refreshToken();
        return handler.resolve(await _retry(err.requestOptions));
      } on DioException catch (error) {
        return handler.next(error);
      }
    }

    return handler.next(err);
  }

  Future<void> _refreshToken() async {
    final token = await _storage.getToken();
    if (token == null) throw Exception('There is not token');

    final response = await Dio().post<dynamic>(
      _refreshTokenUrl,
      options: Options(
        headers: <String, dynamic>{
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      ),
      data: {
        'refresh_token': token.refreshToken,
        'grant_type': 'refresh_token',
        'client_id': _clientId,
      },
    );

    if (response.data == null || response.statusCode != 200) {
      throw Exception('There is not token');
    }

    await _storage.saveToken(
      AccessToken.fromJson(response.data as Map<String, dynamic>),
    );
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final headers = requestOptions.headers;
    await _addAuthHeader(headers);
    final options = Options(method: requestOptions.method, headers: headers);

    return Dio().request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  Future<void> _addAuthHeader(Map<String, dynamic> headers) async {
    final token = await _storage.getToken();
    if (token != null) {
      headers['Authorization'] =
          'Bearer ${(await _storage.getToken())!.accessToken}';
    }
  }
}
