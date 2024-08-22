import 'dart:io';

import 'package:example/di/app_modules.dart';
import 'package:example/extensions/context_extensions.dart';
import 'package:example/presentation/bookmark/bloc/bookmark_bloc.dart';
import 'package:example/presentation/checkout/views/bloc/cart_bloc.dart';
import 'package:example/presentation/localization/app_localizations.dart';
import 'package:example/route/route_constants.dart';
import 'package:example/route/router.dart' as router;
import 'package:example/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HttpOverrides.global = MyHttpOverrides();

  SFCommerceSDK sf = SFCommerceSDK(
      config: SfCommerceConfig(
    clientId: '0c892f93-5262-4cab-8349-b170e0779357',
    organizationId: 'f_ecom_zzrj_031',
    siteId: 'RefArch',
    host: 'https://kv7kzm78.api.commercecloud.salesforce.com',
  ));

  AppModules().setup(sf); // Setup dependency injection

  runApp(const MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

// Thanks for using our template. You are using the free version of the template.
// 🔗 Full template: https://theflutterway.gumroad.com/l/fluttershop

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(create: (context) => CartBloc()),
        BlocProvider<BookmarkBloc>(create: (context) => BookmarkBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Capgemini Flutter Sandbox',
        theme: AppTheme.lightTheme(context),
        // Dark theme is included in the Full template
        themeMode: ThemeMode.dark,
        onGenerateRoute: router.generateRoute,
        initialRoute: splashScreenRoute,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        onGenerateTitle: (context) => context.localizations.app_title,
      ),
    );
  }
}
