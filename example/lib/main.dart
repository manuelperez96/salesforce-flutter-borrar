import 'dart:io';

import 'package:example/app.dart';
import 'package:example/di/app_modules.dart';
import 'package:flutter/material.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //let the app read the image from salesforce
  HttpOverrides.global = MyHttpOverrides();

  final sf = SFCommerceSDK(
    config: SfCommerceConfig(
      clientId: '0c892f93-5262-4cab-8349-b170e0779357',
      organizationId: 'f_ecom_zzrj_031',
      siteId: 'RefArch',
      host: 'https://kv7kzm78.api.commercecloud.salesforce.com',
    ),
  );

  // Setup dependency injection
  AppModules.setup(sf);

  runApp(const App());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
