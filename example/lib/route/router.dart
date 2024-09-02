import 'package:example/components/bottom_navigation_bar/entry_point.dart';
import 'package:example/presentation/address/views/addresses_screen.dart';
import 'package:example/presentation/auth/views/login_screen.dart';
import 'package:example/presentation/auth/views/password_recovery_screen.dart';
import 'package:example/presentation/auth/views/signup_screen.dart';
import 'package:example/presentation/checkout/views/cart_screen.dart';
import 'package:example/presentation/discover/views/discover_screen.dart';
import 'package:example/presentation/home/views/home_screen.dart';
import 'package:example/presentation/kids/views/kids_screen.dart';
import 'package:example/presentation/notification/view/enable_notification_screen.dart';
import 'package:example/presentation/notification/view/no_notification_screen.dart';
import 'package:example/presentation/notification/view/notification_ontions_screen.dart';
import 'package:example/presentation/notification/view/notificatios_screen.dart';
import 'package:example/presentation/on_sale/views/on_sale_screen.dart';
import 'package:example/presentation/onbording/views/onbording_screnn.dart';
import 'package:example/presentation/order/views/orders_screen.dart';
import 'package:example/presentation/preferences/views/preferences_screen.dart';
import 'package:example/presentation/product_detail/product_detail_provider.dart';
import 'package:example/presentation/profile/views/profile_screen.dart';
import 'package:example/presentation/reviews/view/product_reviews_screen.dart';
import 'package:example/presentation/splash/splash_screen.dart';
import 'package:example/presentation/user_info/views/user_info_screen.dart';
import 'package:example/presentation/wallet/views/empty_wallet_screen.dart';
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
    case logInScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case signUpScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );
    case passwordRecoveryScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const PasswordRecoveryScreen(),
      );
    case productDetailsScreenRoute:
      return MaterialPageRoute(
        builder: (context) {
          String productId = settings.arguments as String;
          return ProductDetailProvider(productId: productId);
        },
      );
    case productReviewsScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const ProductReviewsScreen(),
      );
    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case discoverScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const DiscoverScreen(),
      );
    case onSaleScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const OnSaleScreen(),
      );
    case kidsScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const KidsScreen(),
      );
    // case bookmarkScreenRoute:
    //   return MaterialPageRoute(
    //     builder: (context) => const BookmarkScreen(),
    //   );
    case entryPointScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const EntryPoint(),
      );
    case profileScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      );
    case userInfoScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const UserInfoScreen(),
      );
    case notificationsScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const NotificationsScreen(),
      );
    case noNotificationScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const NoNotificationScreen(),
      );
    case enableNotificationScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const EnableNotificationScreen(),
      );
    case notificationOptionsScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const NotificationOptionsScreen(),
      );
    case addressesScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const AddressesScreen(),
      );
    case ordersScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const OrdersScreen(),
      );
    case preferencesScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const PreferencesScreen(),
      );
    case emptyWalletScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const EmptyWalletScreen(),
      );
    case cartScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const CartScreen(),
      );
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const OnBordingScreen(),
      );
  }
}
