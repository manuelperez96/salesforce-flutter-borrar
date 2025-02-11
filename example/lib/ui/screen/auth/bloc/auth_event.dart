part of 'auth_bloc.dart';

abstract class AuthEvent {}

class Login extends AuthEvent {
  Login({required this.email, required this.password});

  final String email;
  final String password;
}
