import 'package:example/di/app_modules.dart';
import 'package:example/domain/repository/auth_repository.dart';
import 'package:example/domain/repository/cors_repository.dart';
import 'package:example/ui/constants/assets.dart';
import 'package:example/ui/route/route_constants.dart';
import 'package:example/ui/screen/splash/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

class SplashProvider extends StatelessWidget {
  const SplashProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashBloc(
        authRepository: AuthRepository(
          authApi: inject.get<SFCommerceSDK>().authApi,
        ),
        corsRepository: CorsRepository(
          corsApi: inject.get<SFCommerceSDK>().corsApi,
        ),
      )..add(const SplashEvent.started()),
      child: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listenWhen: _didLogin,
      listener: _navigateToOnboarding,
      child: Scaffold(
        body: Center(
          child: Lottie.asset(Assets.bagAnimation),
        ),
      ),
    );
  }

  bool _didLogin(SplashState previous, SplashState current) {
    return current.logged;
  }

  void _navigateToOnboarding(BuildContext context, SplashState state) {
    Navigator.pushReplacementNamed(context, onboardingScreenRoute);
  }
}
