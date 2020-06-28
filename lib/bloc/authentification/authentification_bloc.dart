import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentification_event.dart';
part 'authentification_state.dart';

class AuthentificationBloc
    extends Bloc<AuthentificationEvent, AuthentificationState> {
  @override
  AuthentificationState get initialState => AuthentificationInitial();

  @override
  Stream<AuthentificationState> mapEventToState(
    AuthentificationEvent event,
  ) async* {}
}
