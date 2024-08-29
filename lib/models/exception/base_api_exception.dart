abstract class BaseApiException implements Exception {
  const BaseApiException([this.message]);

  final Object? message;

  @override
  String toString() {
    if (message == null) return super.toString();
    return '$runtimeType: $message';
  }
}
