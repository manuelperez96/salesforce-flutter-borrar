import 'package:dio/dio.dart';

/// Abstract class `Repository` that serves as the base for any network request.
///
/// This class defines a common structure for all repository classes that make HTTP requests using
/// the Dio library. It provides a `path` property to specify the API endpoint and a `Dio` HTTP client
/// to perform the requests.
abstract class Repository {
  /// API endpoint that must be defined by classes inheriting from `Repository`.
  ///
  /// Each concrete class must provide the specific URL (or part of it) that will be used to make
  /// the network requests.
  String get path;

  /// HTTP client used to perform network requests.
  ///
  /// The `dio` instance is passed to the constructor of the repository and is used to configure
  /// and execute HTTP requests.
  final Dio dio;

  /// Constructor for the `Repository` class.
  ///
  /// This constructor initializes the `dio` client, allowing subclasses to use it for making HTTP requests.
  Repository(this.dio);
}
