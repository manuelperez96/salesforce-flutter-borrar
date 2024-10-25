import 'package:example/di/app_modules.dart';
import 'package:example/domain/repository/auth_repository.dart';
import 'package:example/domain/repository/basket_repository.dart';
import 'package:example/l10n/arb/app_localizations.dart';
import 'package:example/ui/route/route_constants.dart';
import 'package:example/ui/route/router.dart' as router;
import 'package:example/ui/screen/auth/bloc/auth_bloc.dart';
import 'package:example/ui/screen/basket/bloc/cart_bloc.dart';
import 'package:example/ui/screen/basket/bloc/cart_event.dart';
import 'package:example/ui/theme/app_theme.dart';
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
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(
            authRepository: AuthRepository(
              authApi: inject.get<SFCommerceSDK>().authApi,
            ),
          ),
        ),
        BlocProvider<CartBloc>(
          create: (context) => CartBloc(
            basketRepository: BasketRepository(
              basketApi: inject.get<SFCommerceSDK>().basketApi,
              productApi: inject.get<SFCommerceSDK>().productApi,
              orderApi: inject.get<SFCommerceSDK>().orderApi,
            ),
          )..add(CheckStatusCart()),
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
