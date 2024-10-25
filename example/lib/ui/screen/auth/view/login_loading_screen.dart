import 'package:example/ui/route/route_constants.dart';
import 'package:example/ui/screen/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingAuthScreen extends StatelessWidget {
  const LoadingAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            Future(
              () => Navigator.pushReplacementNamed(
                context,
                entryPointScreenRoute,
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
