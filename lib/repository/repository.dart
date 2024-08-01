import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';

/// Abstract class `Repository` that serves as the base for any network request.
///
/// This class defines a common structure for all repository classes that make HTTP requests using
/// the Dio library. It provides a `path` property to specify the API endpoint and a `Dio` HTTP client
/// to perform the requests.
abstract class Repository {
  /// Constructs a `Repository` with the given [host].
  ///
  /// The [host] parameter is used to initialize the base URL for the API requests.
  Repository({required this.dio, required this.config});

  @protected
  final Dio dio;

  @protected
  final SfCommerceConfig config;

  /// HTTP client used to perform network requests.
  ///
  /// The `dio` instance is passed to the constructor of the repository and is used to configure
  /// and execute HTTP requests.
}
