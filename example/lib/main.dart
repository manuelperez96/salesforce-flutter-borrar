import 'package:example/extensions/context_extensions.dart';
import 'package:example/presentation/bookmark/bloc/bookmark_bloc.dart';
import 'package:example/presentation/checkout/views/bloc/cart_bloc.dart';
import 'package:example/presentation/localization/app_localizations.dart';
import 'package:example/route/route_constants.dart';
import 'package:example/route/router.dart' as router;
import 'package:example/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
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
