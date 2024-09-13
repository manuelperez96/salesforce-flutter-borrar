import 'package:sf_commerce_sdk/src/models/exception/base_api_exception.dart';

class UnableDoAnonymousLoginException extends BaseApiException {
  const UnableDoAnonymousLoginException([super.message]);
}

class GetAuthorizationCodeException extends BaseApiException {
  const GetAuthorizationCodeException([super.message]);
}

class GetAccessTokenException extends BaseApiException {
  const GetAccessTokenException([super.message]);
}

class GetRefreshTokenException extends BaseApiException {
  const GetRefreshTokenException([super.message]);
}
