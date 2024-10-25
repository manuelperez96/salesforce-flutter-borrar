import 'package:example/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

MultiValidator passValidator(BuildContext context) {
  return MultiValidator([
    RequiredValidator(errorText: context.l10n.password_required),
    MinLengthValidator(8, errorText: context.l10n.password_digits_long),
    PatternValidator(
      r'(?=.*?[#?!@$%^&*-])',
      errorText: context.l10n.passwords_special_character,
    ),
  ]);
}

MultiValidator emailValidator(BuildContext context) {
  return MultiValidator([
    RequiredValidator(errorText: context.l10n.email_required),
    EmailValidator(errorText: context.l10n.valid_email_address),
  ]);
}
