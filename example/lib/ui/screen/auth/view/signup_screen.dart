import 'package:example/constants.dart';
import 'package:example/l10n/l10n.dart';
import 'package:example/ui/constants/assets.dart';
import 'package:example/ui/route/route_constants.dart';
import 'package:example/ui/screen/auth/widgets/sign_up_form.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool agreeTermsAndPolicy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              Assets.signUpHeader,
              height: MediaQuery.sizeOf(context).height * 0.35,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.sign_up_title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Text(
                    context.l10n.sign_up_description,
                  ),
                  const SizedBox(height: defaultPadding),
                  const SignUpForm(),
                  const SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      Checkbox(
                        onChanged: (value) {
                          agreeTermsAndPolicy = value!;
                          setState(() {});
                        },
                        value: agreeTermsAndPolicy,
                      ),
                      const _TermsAndPolicyText(),
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  ElevatedButton(
                    onPressed: () {
                      if (agreeTermsAndPolicy) {
                        Navigator.pushReplacementNamed(
                          context,
                          loginScreenRoute,
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              context.l10n.must_accept_terms,
                            ),
                          ),
                        );
                      }
                    },
                    child: Text(
                      context.l10n.sign_up,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(context.l10n.sign_up_have_account_description),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            loginScreenRoute,
                          );
                        },
                        child: Text(context.l10n.sign_up_have_account_login),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TermsAndPolicyText extends StatelessWidget {
  const _TermsAndPolicyText();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text.rich(
        TextSpan(
          text: context.l10n.sign_up_agree,
          children: [
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(context.l10n.terms_unavailable),
                    ),
                  );
                },
              text: context.l10n.sign_up_terms,
              style: const TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: context.l10n.sign_up_and,
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(context.l10n.policy_unavailable),
                    ),
                  );
                },
              text: context.l10n.sign_up_policy,
              style: const TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
