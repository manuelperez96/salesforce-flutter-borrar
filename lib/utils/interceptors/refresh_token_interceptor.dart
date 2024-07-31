import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/models/responses/access_token/access_token.dart';
import 'package:sf_commerce_sdk/utils/interceptors/credentials_wallet.dart';

class RefreshTokenInterceptor extends Interceptor {
  final String _organizationId;
  final String _host;
  AccessToken _token;
  

  late final _refreshTokenUrl =
      '$_host/shopper/auth/v1/organizations/$_organizationId/oauth2/token';

  RefreshTokenInterceptor({
    required String organizationId,
    required String host,
    required AccessToken initialToken,
  })  : _organizationId = organizationId,
        _host = host,
        _token = initialToken;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    _addAuthHeader(options.headers);
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      // Refresh token and try again
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
    final refreshToken = await CredentialsWallet.getRefreshToken();
    final response = await Dio().post(_refreshTokenUrl,
        data: {CredentialsWallet.refreshTokenKey: refreshToken});

    if (response.statusCode == 200) {
      await CredentialsWallet.saveAll(response.data);
    } else {
      await CredentialsWallet.clearAll();
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final headers = requestOptions.headers;
    _addAuthHeader(headers);
    final options = Options(method: requestOptions.method, headers: headers);

    return Dio().request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }

  void _addAuthHeader(Map<String, dynamic> headers) {
    headers['Authorization'] = 'Bearer ${_token.accessToken}';
  }
}
