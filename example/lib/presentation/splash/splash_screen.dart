import 'dart:async';

import 'package:example/constants/assets.dart';
import 'package:example/di/app_modules.dart';
import 'package:example/route/screen_export.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(Assets.bagAnimation),
      ),
    );
  }

  Future<void> _navigateToOnboarding() async {
    await Future.wait([
      Future.delayed(const Duration(milliseconds: 2500)),
      inject<SFCommerceSDK>().anonymousLogin(),
    ]);
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, onboardingScreenRoute);
  }
}
