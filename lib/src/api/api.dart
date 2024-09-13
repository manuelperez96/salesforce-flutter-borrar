import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sf_commerce_sdk/src/models/sf_commerce_config.dart';

/// {@template api}
/// A base class for API interactions within the SF Commerce SDK.
///
/// This class provides the necessary configuration and HTTP client (Dio)
/// for making API requests. It is intended to be extended by specific
/// API classes that interact with different endpoints.
///
/// - `dio`: The Dio instance used for making HTTP requests.
/// - `config`: The configuration details required for the API interactions.
/// {@endtemplate}
abstract class Api {
  /// {@macro api}
  const Api({required this.dio, required this.config});

  /// The Dio instance used for making HTTP requests.
  @protected
  final Dio dio;

  /// The configuration details required for the API interactions.
  @protected
  final SfCommerceConfig config;
}
