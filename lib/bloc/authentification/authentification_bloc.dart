import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import 'package:greenapp_flutterhack/Repository/user_repository.dart';

part 'authentification_event.dart';
part 'authentification_state.dart';

class AuthentificationBloc
    extends Bloc<AuthentificationEvent, AuthentificationState> {

    final UserRepository _userRepository;

  AuthentificationBloc({@required UserRepository userRepository})
    : assert(userRepository != null),
      _userRepository = userRepository;  
  
  @override
  AuthentificationState get initialState => AuthentificationInitial();

  @override
  Stream<AuthentificationState> mapEventToState(
    AuthentificationEvent event,
  ) async* {
    if(event is AuthenticationStarted){
      yield* _mapAuthentificationStartedToState();
    } else if(event is AuthenticationLoggedIn){
      yield* _mapAuthentificationLoggedInToState();
    } else if(event is AuthenticationLoggedOut){
      yield* _mapAuthentificationLoggedOutToState();
    }
  }

  Stream<AuthentificationState> _mapAuthentificationStartedToState() async*{
    final isSignedIn = await _userRepository.isSignedIn();
    if(isSignedIn){
      final name = await _userRepository.getUser();
      yield AuthenticationSuccess(name);
    } else {
      yield AuthenticationFailure();
    }
  }

  Stream<AuthentificationState> _mapAuthentificationLoggedInToState() async* {
    yield AuthenticationSuccess(await _userRepository.getUser());
  }


  Stream<AuthentificationState> _mapAuthentificationLoggedOutToState() async* {
    yield AuthenticationFailure();
    _userRepository.signOut();
  }

}
