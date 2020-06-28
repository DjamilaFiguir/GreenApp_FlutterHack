part of 'authentification_bloc.dart';

abstract class AuthentificationEvent extends Equatable {
  @override
  List<Object> get props => [];
}


class AuthenticationStarted extends AuthentificationEvent {}

class AuthenticationLoggedIn extends AuthentificationEvent {}

class AuthenticationLoggedOut extends AuthentificationEvent {}
