final class SfCommerceConfig {
  final String clientId;
  final String organizationId;
  final String siteId;
  final String host;

  SfCommerceConfig({
    required this.clientId,
    required this.organizationId,
    required this.siteId,
    required this.host,
  }) : assert(
          host.startsWith('http://') || host.startsWith('https://'),
          'The host URL must start with "http://" or "https://"',
        );

  @override
  String toString() {
    return 'SfCommerceConfig{clientId: $clientId, organizationId: $organizationId, siteId: $siteId, host: $host}';
  }
}
