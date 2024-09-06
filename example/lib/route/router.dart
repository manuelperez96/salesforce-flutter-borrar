import 'package:example/components/bottom_navigation_bar/entry_point.dart';
import 'package:example/presentation/basket/views/cart_screen.dart';
import 'package:example/presentation/checkout/views/billing_address_screen.dart';
import 'package:example/presentation/checkout/views/order_screen.dart';
import 'package:example/presentation/checkout/views/payment_method_screen.dart';
import 'package:example/presentation/discover/views/discover_screen.dart';
import 'package:example/presentation/home/views/home_screen.dart';
import 'package:example/presentation/onbording/views/onbording_screnn.dart';
import 'package:example/presentation/product_detail/product_detail_provider.dart';
import 'package:example/presentation/splash/splash_screen.dart';
import 'package:example/route/route_constants.dart';
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
        builder: (context) => const EntryPoint(),
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
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const OnBordingScreen(),
      );
  }
}
