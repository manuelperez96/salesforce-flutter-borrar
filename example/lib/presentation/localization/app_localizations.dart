import 'dart:async';

import 'package:example/presentation/localization/app_localizations_en.dart';
import 'package:example/presentation/localization/app_localizations_es.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale);

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
  ];

  /// No description provided for @app_title.
  ///
  /// In en, this message translates to:
  /// **'Demo Capgemini'**
  String get app_title;

  /// No description provided for @onboarding_title_1.
  ///
  /// In en, this message translates to:
  /// **'Find the item you’ve been looking for'**
  String get onboarding_title_1;

  /// No description provided for @onboarding_title_2.
  ///
  /// In en, this message translates to:
  /// **'Get those shopping \nbags filled'**
  String get onboarding_title_2;

  /// No description provided for @onboarding_title_3.
  ///
  /// In en, this message translates to:
  /// **'Fast & secure \npayment'**
  String get onboarding_title_3;

  /// No description provided for @onboarding_title_4.
  ///
  /// In en, this message translates to:
  /// **'Package tracking'**
  String get onboarding_title_4;

  /// No description provided for @onboarding_title_5.
  ///
  /// In en, this message translates to:
  /// **'Nearby stores'**
  String get onboarding_title_5;

  /// No description provided for @onboarding_description_1.
  ///
  /// In en, this message translates to:
  /// **'Here you’ll see rich varieties of goods, carefully classified for seamless browsing experience.'**
  String get onboarding_description_1;

  /// No description provided for @onboarding_description_2.
  ///
  /// In en, this message translates to:
  /// **'Add any item you want to your cart, or save it on your wishlist, so you don’t miss it in your future purchases.'**
  String get onboarding_description_2;

  /// No description provided for @onboarding_description_3.
  ///
  /// In en, this message translates to:
  /// **'There are many payment options available for your ease.'**
  String get onboarding_description_3;

  /// No description provided for @onboarding_description_4.
  ///
  /// In en, this message translates to:
  /// **'In particular, Shoplon can pack your orders, and help you seamlessly manage your shipments.'**
  String get onboarding_description_4;

  /// No description provided for @onboarding_description_5.
  ///
  /// In en, this message translates to:
  /// **'Easily track nearby shops, browse through their items and get information about their prodcuts.'**
  String get onboarding_description_5;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @welcome_back.
  ///
  /// In en, this message translates to:
  /// **'Welcome back!'**
  String get welcome_back;

  /// No description provided for @login_description.
  ///
  /// In en, this message translates to:
  /// **'Log in with your data that you intered during your registration.'**
  String get login_description;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get forgot_password;

  /// No description provided for @log_in_button.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get log_in_button;

  /// No description provided for @no_account_description.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account?'**
  String get no_account_description;

  /// No description provided for @sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get sign_up;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @email_address.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get email_address;

  /// No description provided for @email_required.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get email_required;

  /// No description provided for @valid_email_address.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address'**
  String get valid_email_address;

  /// No description provided for @passwords_special_character.
  ///
  /// In en, this message translates to:
  /// **'Passwords must have at least one special character'**
  String get passwords_special_character;

  /// No description provided for @password_required.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get password_required;

  /// No description provided for @password_digits_long.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 digits long'**
  String get password_digits_long;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @popular_products.
  ///
  /// In en, this message translates to:
  /// **'Popular products'**
  String get popular_products;

  /// No description provided for @all_categories.
  ///
  /// In en, this message translates to:
  /// **'All Categories'**
  String get all_categories;

  /// No description provided for @onsale.
  ///
  /// In en, this message translates to:
  /// **'On Sale'**
  String get onsale;

  /// No description provided for @mans.
  ///
  /// In en, this message translates to:
  /// **'Man’s'**
  String get mans;

  /// No description provided for @womans.
  ///
  /// In en, this message translates to:
  /// **'Woman’s'**
  String get womans;

  /// No description provided for @kids.
  ///
  /// In en, this message translates to:
  /// **'Kids'**
  String get kids;

  /// No description provided for @flash_sale.
  ///
  /// In en, this message translates to:
  /// **'Flash sale'**
  String get flash_sale;

  /// No description provided for @best_sellers.
  ///
  /// In en, this message translates to:
  /// **'Best sellers'**
  String get best_sellers;

  /// No description provided for @most_popular.
  ///
  /// In en, this message translates to:
  /// **'Most popular'**
  String get most_popular;

  /// No description provided for @label_shop.
  ///
  /// In en, this message translates to:
  /// **'Shop'**
  String get label_shop;

  /// No description provided for @label_discover.
  ///
  /// In en, this message translates to:
  /// **'Discover'**
  String get label_discover;

  /// No description provided for @label_bookmark.
  ///
  /// In en, this message translates to:
  /// **'Bookmark'**
  String get label_bookmark;

  /// No description provided for @label_cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get label_cart;

  /// No description provided for @label_profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get label_profile;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @man_woman.
  ///
  /// In en, this message translates to:
  /// **'Man’s & Woman’s'**
  String get man_woman;

  /// No description provided for @accessories.
  ///
  /// In en, this message translates to:
  /// **'Accessories'**
  String get accessories;

  /// No description provided for @category_subtitle_1.
  ///
  /// In en, this message translates to:
  /// **'All Clothing'**
  String get category_subtitle_1;

  /// No description provided for @category_subtitle_2.
  ///
  /// In en, this message translates to:
  /// **'New In'**
  String get category_subtitle_2;

  /// No description provided for @category_subtitle_3.
  ///
  /// In en, this message translates to:
  /// **'Coats & Jackets'**
  String get category_subtitle_3;

  /// No description provided for @category_subtitle_4.
  ///
  /// In en, this message translates to:
  /// **'Dresses'**
  String get category_subtitle_4;

  /// No description provided for @category_subtitle_5.
  ///
  /// In en, this message translates to:
  /// **'Jeans'**
  String get category_subtitle_5;

  /// No description provided for @discover_hint.
  ///
  /// In en, this message translates to:
  /// **'Find something...'**
  String get discover_hint;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @returns.
  ///
  /// In en, this message translates to:
  /// **'Returns'**
  String get returns;

  /// No description provided for @wishlist.
  ///
  /// In en, this message translates to:
  /// **'Wishlist'**
  String get wishlist;

  /// No description provided for @addresses.
  ///
  /// In en, this message translates to:
  /// **'Addresses'**
  String get addresses;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @personalization.
  ///
  /// In en, this message translates to:
  /// **'Personalization'**
  String get personalization;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @help_support.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get help_support;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Get Help'**
  String get help;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// No description provided for @log_out.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get log_out;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
