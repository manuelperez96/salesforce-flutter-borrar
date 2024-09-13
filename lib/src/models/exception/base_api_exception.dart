/// {@template base_api_exception}
/// A base class for API exceptions.
/// 
/// This class implements the [Exception] interface and provides a common
/// structure for API-related exceptions. It includes an optional message
/// that can be used to provide additional information about the exception.
/// 
/// Example usage:
/// 
/// ```dart
/// class CustomApiException extends BaseApiException {
///   const CustomApiException([String? message]) : super(message);
/// }
/// 
/// void someFunction() {
///   throw CustomApiException('An error occurred');
/// }
/// ```
/// {@endtemplate}
abstract class BaseApiException implements Exception {
  /// {@macro base_api_exception}
  const BaseApiException([this.message]);

  /// The message describing the exception.
  final dynamic message;

  @override
  String toString() {
    if (message == null) return super.toString();
    return '$runtimeType: $message';
  }
}