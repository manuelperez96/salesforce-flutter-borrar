import 'package:example/constants.dart';
import 'package:example/l10n/l10n.dart';
import 'package:example/ui/route/route_constants.dart';
import 'package:example/ui/screen/auth/bloc/auth_bloc.dart';
import 'package:example/ui/screen/auth/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailTextController = TextEditingController()
    ..text = 'test@capgemini.com';
  final _passwordTextController = TextEditingController()..text = 'password1@';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_header.png',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.welcome_back,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Text(
                    context.l10n.login_description,
                  ),
                  const SizedBox(height: defaultPadding),
                  LogInForm(
                    emailController: _emailTextController,
                    passwordController: _passwordTextController,
                  ),
                  Align(
                    child: TextButton(
                      child: Text(context.l10n.forgot_password),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height:
                        size.height > 700 ? size.height * 0.1 : defaultPadding,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(
                            Login(
                              email: _emailTextController.text,
                              password: _passwordTextController.text,
                            ),
                          );

                      Navigator.pushReplacementNamed(
                        context,
                        loginLoadingScreenRoute,
                      );
                    },
                    child: Text(context.l10n.log_in_button),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(context.l10n.log_in_no_account_description),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            signUpScreenRoute,
                          );
                        },
                        child: Text(context.l10n.log_in_no_account_sign_up),
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
