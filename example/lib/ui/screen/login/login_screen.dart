import 'package:example/ui/route/route_constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, entryPointScreenRoute);
          },
          child: const Text('pulsa aqui'),
        ),
      ),
    );
  }
}
