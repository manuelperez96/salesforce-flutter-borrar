import 'package:sf_commerce_sdk/models/exception/base_api_exception.dart';

class UnableToGetProductException extends BaseApiException {
  const UnableToGetProductException(this.stackTrace, [super.message]);

  final StackTrace stackTrace;

  @override
  String toString() {
    return super.toString() + stackTrace.toString();
  }
}
