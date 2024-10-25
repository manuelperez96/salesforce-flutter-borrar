part of 'auth_bloc.dart';

abstract class AuthState {}

class AuthLoading extends AuthState {}

class AuthDone extends AuthState {}
