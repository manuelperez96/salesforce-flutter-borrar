import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/src/models/exception/auth_exception.dart';
import 'package:sf_commerce_sdk/src/models/responses/access_token/access_token.dart';
import 'package:sf_commerce_sdk/src/utils/interceptors/token_storage.dart';

/// {@template refresh_token_interceptor}
/// An interceptor for handling token refresh in Dio requests.
/// 
/// This class extends [QueuedInterceptor] and provides functionality to
/// automatically refresh the access token when a 401 Unauthorized error occurs.
/// 
/// - `organizationId`: The ID of the organization.
/// - `host`: The host URL for the API.
/// - `storage`: The storage for tokens.
/// - `clientId`: The client ID for the OAuth2 authentication.
/// {@endtemplate}
class RefreshTokenInterceptor extends QueuedInterceptor {
  /// {@macro refresh_token_interceptor}
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

  /// Refreshes the access token using the refresh token.
  ///
  /// Throws [GetRefreshTokenException] if the token cannot be refreshed.
  Future<void> _refreshToken() async {
    final token = await _storage.getToken();
    if (token == null) throw const GetRefreshTokenException();

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
      throw const GetRefreshTokenException();
    }

    await _storage.saveToken(
      AccessToken.fromJson(response.data as Map<String, dynamic>),
    );
  }

  /// Retries the failed request with the new access token.
  ///
  /// - `requestOptions`: The options of the failed request.
  ///
  /// Returns the response of the retried request.
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

  /// Adds the authorization header to the request.
  ///
  /// - `headers`: The headers of the request.
  Future<void> _addAuthHeader(Map<String, dynamic> headers) async {
    final token = await _storage.getToken();
    if (token != null) {
      headers['Authorization'] = 'Bearer ${token.accessToken}';
    }
  }
}
