import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arb/app_localizations.dart';
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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('es')
  ];

  /// No description provided for @shop.
  ///
  /// In es, this message translates to:
  /// **'Tienda'**
  String get shop;

  /// No description provided for @categories.
  ///
  /// In es, this message translates to:
  /// **'Categorías'**
  String get categories;

  /// No description provided for @cart.
  ///
  /// In es, this message translates to:
  /// **'Cesta'**
  String get cart;

  /// No description provided for @onSale.
  ///
  /// In es, this message translates to:
  /// **'En venta'**
  String get onSale;

  /// No description provided for @skip.
  ///
  /// In es, this message translates to:
  /// **'Saltar'**
  String get skip;

  /// No description provided for @onBoarding_title1.
  ///
  /// In es, this message translates to:
  /// **'Encuentra el artículo que has estado buscando'**
  String get onBoarding_title1;

  /// No description provided for @onBoarding_subtitle1.
  ///
  /// In es, this message translates to:
  /// **'Aquí verás una gran variedad de productos, cuidadosamente clasificados para una experiencia de navegación sin problemas.'**
  String get onBoarding_subtitle1;

  /// No description provided for @onBoarding_title2.
  ///
  /// In es, this message translates to:
  /// **'Llena esas bolsas de compras'**
  String get onBoarding_title2;

  /// No description provided for @onBoarding_subtitle2.
  ///
  /// In es, this message translates to:
  /// **'Agrega cualquier artículo que desees a tu carrito, o guárdalo en tu lista de deseos, para que no lo pierdas en tus futuras compras.'**
  String get onBoarding_subtitle2;

  /// No description provided for @onBoarding_title3.
  ///
  /// In es, this message translates to:
  /// **'Pago rápido y seguro'**
  String get onBoarding_title3;

  /// No description provided for @onBoarding_subtitle3.
  ///
  /// In es, this message translates to:
  /// **'Hay muchas opciones de pago disponibles para tu comodidad.'**
  String get onBoarding_subtitle3;

  /// No description provided for @find.
  ///
  /// In es, this message translates to:
  /// **'Encuentra...'**
  String get find;

  /// No description provided for @checkout.
  ///
  /// In es, this message translates to:
  /// **'Comprar'**
  String get checkout;

  /// No description provided for @continue_button.
  ///
  /// In es, this message translates to:
  /// **'Continuar'**
  String get continue_button;

  /// No description provided for @shipping_title.
  ///
  /// In es, this message translates to:
  /// **'Dirección de envío'**
  String get shipping_title;

  /// No description provided for @shipping_billing_address.
  ///
  /// In es, this message translates to:
  /// **'Usar también como dirección de facturación'**
  String get shipping_billing_address;

  /// No description provided for @shipping_hint_address.
  ///
  /// In es, this message translates to:
  /// **'Dirección'**
  String get shipping_hint_address;

  /// No description provided for @shipping_hint_city.
  ///
  /// In es, this message translates to:
  /// **'Ciudad'**
  String get shipping_hint_city;

  /// No description provided for @shipping_hint_postal_code.
  ///
  /// In es, this message translates to:
  /// **'Codigo postal'**
  String get shipping_hint_postal_code;

  /// No description provided for @shipping_hint_first_name.
  ///
  /// In es, this message translates to:
  /// **'Nombre'**
  String get shipping_hint_first_name;

  /// No description provided for @shipping_hint_last_name.
  ///
  /// In es, this message translates to:
  /// **'Primer apellido'**
  String get shipping_hint_last_name;

  /// No description provided for @shipping_hint_country_code.
  ///
  /// In es, this message translates to:
  /// **'CountryCode'**
  String get shipping_hint_country_code;

  /// No description provided for @shipping_hint_phone_number.
  ///
  /// In es, this message translates to:
  /// **'Número de teléfono'**
  String get shipping_hint_phone_number;

  /// No description provided for @shipping_hint_state_code.
  ///
  /// In es, this message translates to:
  /// **'StateCode'**
  String get shipping_hint_state_code;

  /// No description provided for @payment_method_title.
  ///
  /// In es, this message translates to:
  /// **'Método de Pago'**
  String get payment_method_title;

  /// No description provided for @payment_method_credit_card_number.
  ///
  /// In es, this message translates to:
  /// **'Número de la tarjeta'**
  String get payment_method_credit_card_number;

  /// No description provided for @payment_method_credit_card_date.
  ///
  /// In es, this message translates to:
  /// **'mes/año'**
  String get payment_method_credit_card_date;

  /// No description provided for @payment_method_credit_card_cvc.
  ///
  /// In es, this message translates to:
  /// **'CVC'**
  String get payment_method_credit_card_cvc;

  /// No description provided for @order_title.
  ///
  /// In es, this message translates to:
  /// **'Revisa tu pedido'**
  String get order_title;

  /// No description provided for @order_address_title.
  ///
  /// In es, this message translates to:
  /// **'Dirección'**
  String get order_address_title;

  /// No description provided for @order_label_subtotal.
  ///
  /// In es, this message translates to:
  /// **'Subtotal'**
  String get order_label_subtotal;

  /// No description provided for @order_label_total.
  ///
  /// In es, this message translates to:
  /// **'Total'**
  String get order_label_total;

  /// No description provided for @order_label_shipping_total.
  ///
  /// In es, this message translates to:
  /// **'Gastos de envío'**
  String get order_label_shipping_total;

  /// No description provided for @order_label_tax_total.
  ///
  /// In es, this message translates to:
  /// **'IVA'**
  String get order_label_tax_total;

  /// No description provided for @order_summary_title.
  ///
  /// In es, this message translates to:
  /// **'Resumen del pedido'**
  String get order_summary_title;

  /// No description provided for @order_change_payment_method.
  ///
  /// In es, this message translates to:
  /// **'Cambiar método de pago'**
  String get order_change_payment_method;

  /// No description provided for @order_create_order.
  ///
  /// In es, this message translates to:
  /// **'Realizar pedido'**
  String get order_create_order;

  /// No description provided for @cart_empty.
  ///
  /// In es, this message translates to:
  /// **'El carrito está vacío'**
  String get cart_empty;

  /// No description provided for @quantity.
  ///
  /// In es, this message translates to:
  /// **'Cantidad'**
  String get quantity;

  /// No description provided for @order_summary.
  ///
  /// In es, this message translates to:
  /// **'Resumen del pedido'**
  String get order_summary;

  /// No description provided for @price_per_unit.
  ///
  /// In es, this message translates to:
  /// **'Precio por unidad'**
  String get price_per_unit;

  /// No description provided for @success_pay.
  ///
  /// In es, this message translates to:
  /// **'¡Pago realizado correctamente!'**
  String get success_pay;

  /// No description provided for @on_road.
  ///
  /// In es, this message translates to:
  /// **'Estamos en marcha  😊'**
  String get on_road;

  /// No description provided for @home.
  ///
  /// In es, this message translates to:
  /// **'Inicio'**
  String get home;

  /// No description provided for @welcome_back.
  ///
  /// In es, this message translates to:
  /// **'Bienvenido'**
  String get welcome_back;

  /// No description provided for @login_description.
  ///
  /// In es, this message translates to:
  /// **'Estamos encantados de verte de nuevo, ¿conoces nuestras últimas ofertas?'**
  String get login_description;

  /// No description provided for @forgot_password.
  ///
  /// In es, this message translates to:
  /// **'¿Olvidaste la contraseña?'**
  String get forgot_password;

  /// No description provided for @log_in_button.
  ///
  /// In es, this message translates to:
  /// **'Iniciar sesión'**
  String get log_in_button;

  /// No description provided for @log_in_no_account_description.
  ///
  /// In es, this message translates to:
  /// **'¿No tienes cuenta?'**
  String get log_in_no_account_description;

  /// No description provided for @log_in_no_account_sign_up.
  ///
  /// In es, this message translates to:
  /// **'Regístrate'**
  String get log_in_no_account_sign_up;

  /// No description provided for @sign_up.
  ///
  /// In es, this message translates to:
  /// **'Registrarse'**
  String get sign_up;

  /// No description provided for @sign_up_title.
  ///
  /// In es, this message translates to:
  /// **'¡Comencemos!'**
  String get sign_up_title;

  /// No description provided for @sign_up_description.
  ///
  /// In es, this message translates to:
  /// **'Introduce tus datos para registrarte.'**
  String get sign_up_description;

  /// No description provided for @sign_up_agree.
  ///
  /// In es, this message translates to:
  /// **'Estoy de acuerdo con los '**
  String get sign_up_agree;

  /// No description provided for @sign_up_terms.
  ///
  /// In es, this message translates to:
  /// **'términos del servicio'**
  String get sign_up_terms;

  /// No description provided for @sign_up_and.
  ///
  /// In es, this message translates to:
  /// **' y  '**
  String get sign_up_and;

  /// No description provided for @sign_up_policy.
  ///
  /// In es, this message translates to:
  /// **'políticas de privacidad'**
  String get sign_up_policy;

  /// No description provided for @sign_up_have_account_description.
  ///
  /// In es, this message translates to:
  /// **'¿Ya tienes una cuenta?'**
  String get sign_up_have_account_description;

  /// No description provided for @sign_up_have_account_login.
  ///
  /// In es, this message translates to:
  /// **'Inicia sesión'**
  String get sign_up_have_account_login;

  /// No description provided for @password_digits_long.
  ///
  /// In es, this message translates to:
  /// **'la contraseña debe contener 8 caracteres'**
  String get password_digits_long;

  /// No description provided for @passwords_special_character.
  ///
  /// In es, this message translates to:
  /// **'la contraseña debe tener 1 caracter especial'**
  String get passwords_special_character;

  /// No description provided for @email_required.
  ///
  /// In es, this message translates to:
  /// **'el correo electronico es necesario'**
  String get email_required;

  /// No description provided for @password_required.
  ///
  /// In es, this message translates to:
  /// **'la contraseña es necesaria'**
  String get password_required;

  /// No description provided for @valid_email_address.
  ///
  /// In es, this message translates to:
  /// **'introduce una dirección de correo válida'**
  String get valid_email_address;

  /// No description provided for @password.
  ///
  /// In es, this message translates to:
  /// **'Contraseña'**
  String get password;

  /// No description provided for @email_address.
  ///
  /// In es, this message translates to:
  /// **'Correo electronico'**
  String get email_address;

  /// No description provided for @must_accept_terms.
  ///
  /// In es, this message translates to:
  /// **'Debes aceptar las políticas y los términos de uso'**
  String get must_accept_terms;

  /// No description provided for @terms_unavailable.
  ///
  /// In es, this message translates to:
  /// **'Términos no disponibles'**
  String get terms_unavailable;

  /// No description provided for @policy_unavailable.
  ///
  /// In es, this message translates to:
  /// **'Políticas no disponibles'**
  String get policy_unavailable;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
