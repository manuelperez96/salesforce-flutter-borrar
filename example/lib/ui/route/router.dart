import 'package:example/ui/components/bottom_navigation_bar/entry_point.dart';
import 'package:example/ui/route/route_constants.dart';
import 'package:example/ui/screen/auth/login_screen.dart';
import 'package:example/ui/screen/auth/signup_screen.dart';
import 'package:example/ui/screen/basket/views/cart_screen.dart';
import 'package:example/ui/screen/checkout/views/billing_address_screen.dart';
import 'package:example/ui/screen/checkout/views/order_summary_screen.dart';
import 'package:example/ui/screen/checkout/views/payment_method_screen.dart';
import 'package:example/ui/screen/checkout/views/success_order_screen.dart';
import 'package:example/ui/screen/discover/views/discover_screen.dart';
import 'package:example/ui/screen/home/views/home_screen.dart';
import 'package:example/ui/screen/onbording/views/onbording_screen.dart';
import 'package:example/ui/screen/product_detail/product_detail_provider.dart';
import 'package:example/ui/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case splashScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const SplashProvider(),
      );
    case onboardingScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const OnBordingScreen(),
      );
    case loginScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case signUpScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    case productDetailsScreenRoute:
      return MaterialPageRoute(
        builder: (context) {
          final productId = settings.arguments! as String;
          return ProductDetailProvider(productId: productId);
        },
      );
    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case discoverScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const DiscoverScreen(),
      );
    case entryPointScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const EntryPointProvider(),
      );
    case cartScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const CartScreen(),
      );
    case billingAddressScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const BillingAddressScreen(),
      );
    case paymentMethodScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const PaymentMethodScreen(),
      );
    case orderScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const OrderScreen(),
      );
    case successsOrderScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const SuccessOrderScreen(),
      );
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const OnBordingScreen(),
      );
  }
}
