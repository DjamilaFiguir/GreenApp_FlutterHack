part of 'authentification_bloc.dart';

abstract class AuthentificationState extends Equatable {
  const AuthentificationState();

  @override
  List<Object> get props => [];
}

class AuthentificationInitial extends AuthentificationState {}


class AuthenticationSuccess extends AuthentificationState{
  final String displayName;

  const AuthenticationSuccess(this.displayName);

  @override
  List<Object> get props => [displayName];

  @override
  String toString() => 'AuthenticationSuccess { displayName: $displayName }';
}



class AuthenticationFailure extends AuthentificationState{}
