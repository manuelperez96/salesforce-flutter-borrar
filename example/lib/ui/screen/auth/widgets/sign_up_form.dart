import 'package:example/constants.dart';
import 'package:example/l10n/l10n.dart';
import 'package:example/ui/constants/assets.dart';
import 'package:example/ui/screen/auth/widgets/text_field_icon.dart';
import 'package:example/ui/utils/validators/form_validator.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onSaved: (email) {},
          validator: emailValidator(context).call,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: context.l10n.email_address,
            prefixIcon: const TextFieldIcon(
              iconAsset: Assets.messageIcon,
            ),
          ),
        ),
        const SizedBox(height: defaultPadding),
        TextFormField(
          onSaved: (pass) {},
          validator: passValidator(context).call,
          obscureText: true,
          decoration: InputDecoration(
            hintText: context.l10n.password,
            prefixIcon: const TextFieldIcon(
              iconAsset: Assets.lockIcon,
            ),
          ),
        ),
      ],
    );
  }
}
