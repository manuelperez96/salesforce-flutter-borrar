/// {@template sf_commerce_config}
/// Configuration class for the SF Commerce SDK.
///
/// This class holds the necessary configuration details required to
/// initialize and use the SF Commerce SDK.
///
/// The configuration includes:
/// - `clientId`: The client ID for authentication.
/// - `organizationId`: The organization ID.
/// - `siteId`: The site ID.
/// - `host`: The host URL, which must start with "http://" or "https://".
///
/// Example usage:
///
/// ```dart
/// final config = SfCommerceConfig(
///   clientId: 'your-client-id',
///   organizationId: 'your-organization-id',
///   siteId: 'your-site-id',
///   host: 'https://your-host-url',
/// );
/// ```
/// {@endtemplate}
final class SfCommerceConfig {
  /// {@macro sf_commerce_config}
  SfCommerceConfig({
    required this.clientId,
    required this.organizationId,
    required this.siteId,
    required this.host,
  }) : assert(
          host.startsWith('http://') || host.startsWith('https://'),
          'The host URL must start with "http://" or "https://"',
        );

  /// The client ID for authentication.
  final String clientId;

  /// The organization ID.
  final String organizationId;

  /// The site ID.
  final String siteId;

  /// The host URL, which must start with "http://" or "https://".
  final String host;

  @override
  String toString() {
    return 'SfCommerceConfig{clientId: $clientId, organizationId: '
        '$organizationId, siteId: $siteId, host: $host}';
  }
}
