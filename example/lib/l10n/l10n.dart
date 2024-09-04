import 'package:example/l10n/arb/app_localizations.dart';
import 'package:flutter/widgets.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
