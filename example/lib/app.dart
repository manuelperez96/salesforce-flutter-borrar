import 'package:example/di/app_modules.dart';
import 'package:example/l10n/arb/app_localizations.dart';
import 'package:example/presentation/checkout/views/bloc/cart_bloc.dart';
import 'package:example/presentation/checkout/views/bloc/cart_event.dart';
import 'package:example/presentation/home/bloc/home_bloc.dart';
import 'package:example/route/route_constants.dart';
import 'package:example/route/router.dart' as router;
import 'package:example/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (context) => CartBloc(
            basketRepository: inject<SFCommerceSDK>().basketRepository,
            productRepository: inject<SFCommerceSDK>().productRepository,
          )..add(CheckStatusCart()),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(
            categoryRepository: inject<SFCommerceSDK>().categoryRepository,
            productRepository: inject<SFCommerceSDK>().productRepository,
          )..add(const HomeEvent.loadHomeData()),
        ),
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
      ),
    );
  }
}
