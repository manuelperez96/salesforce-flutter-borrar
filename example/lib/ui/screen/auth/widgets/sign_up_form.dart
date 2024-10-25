import 'package:example/constants.dart';
import 'package:example/l10n/l10n.dart';
import 'package:example/ui/utils/validators/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            prefixIcon: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
              child: SvgPicture.asset(
                'assets/icons/Message.svg',
                height: 24,
                width: 24,
                colorFilter: ColorFilter.mode(
                  Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .color!
                      .withOpacity(0.3),
                  BlendMode.srcIn,
                ),
              ),
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
            prefixIcon: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
              child: SvgPicture.asset(
                'assets/icons/Lock.svg',
                height: 24,
                width: 24,
                colorFilter: ColorFilter.mode(
                  Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .color!
                      .withOpacity(0.3),
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
