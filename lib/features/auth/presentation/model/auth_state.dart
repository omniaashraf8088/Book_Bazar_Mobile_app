part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class SignUpSuccessState extends AuthState {}

class SignUpFailureState extends AuthState {
  final String errorMessage;
  SignUpFailureState({required this.errorMessage});
}

class SignUpLoadingState extends AuthState {}
