// import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';
// import 'package:test/test.dart';

// void main() {
//   group('SFCommerceSDK Integration Tests', () {
//     setUp(() async {
//       await SFCommerceSDK.initialize(
//         clientId: '0c892f93-5262-4cab-8349-b170e0779357',
//         organizationId: 'f_ecom_zzrj_031',
//         shortCode: 'kv7kzm78',
//         siteId: 'RefArch',
//         host: 'https://kv7kzm78.api.commercecloud.salesforce.com',
//       );
//     });

//     test('Wrong host initializing SDK', () async {
//       // Verifica que inicializar con un host incorrecto lance un ArgumentError
//       expect(() => SFCommerceSDK.initialize(
//         clientId: '0c892f93-5262-4cab-8349-b170e0779357',
//         organizationId: 'f_ecom_zzrj_031',
//         shortCode: 'kv7kzm78',
//         siteId: 'RefArch',
//         host: 'kv7kzm78.api.commercecloud.salesforce.com',
//       ), throwsArgumentError);
//     });
//   });
// }
