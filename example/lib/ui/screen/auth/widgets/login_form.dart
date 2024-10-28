import 'package:example/constants.dart';
import 'package:example/l10n/l10n.dart';
import 'package:example/ui/constants/assets.dart';
import 'package:example/ui/screen/auth/widgets/text_field_icon.dart';
import 'package:example/ui/utils/validators/form_validator.dart';
import 'package:flutter/material.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({
    required this.emailController,
    required this.passwordController,
    super.key,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: emailController,
          onSaved: (email) {
            // TODO(Team): save email when session development is completed
          },
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
          controller: passwordController,
          onSaved: (password) {
            // TODO(Team): save password when session development is completed
          },
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
