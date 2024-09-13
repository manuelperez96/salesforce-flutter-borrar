import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

/// {@template unable_to_get_product_exception}
/// Exception thrown when there is an error retrieving a product.
/// 
/// This exception includes a stack trace to provide more context about
/// where the error occurred.
/// 
/// - `stackTrace`: The stack trace associated with the exception.
/// - `message`: An optional message describing the error.
/// {@endtemplate}
class UnableToGetProductException extends BaseApiException {
  /// {@macro unable_to_get_product_exception}
  const UnableToGetProductException(this.stackTrace, [super.message]);

  /// The stack trace associated with the exception.
  final StackTrace stackTrace;

  @override
  String toString() {
    return super.toString() + stackTrace.toString();
  }
}
