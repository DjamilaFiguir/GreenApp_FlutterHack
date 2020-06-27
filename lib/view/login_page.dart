import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenapp_flutterhack/bloc/authentification/authentification_bloc.dart';
import 'package:greenapp_flutterhack/Repository/user_repository.dart';
import 'package:greenapp_flutterhack/view/home_screen.dart';
import 'package:greenapp_flutterhack/view/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final UserRepository userRepository = UserRepository();
  runApp(
    BlocProvider(
      create: (context) => AuthentificationBloc(userRepository: userRepository)
        ..add(AuthenticationStarted()),
      child: App(userRepository: userRepository),
    ),
  );
}

class App extends StatelessWidget {
  App({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AuthentificationBloc, AuthentificationState>(
          builder: (context, state) {
        if (state is AuthentificationInitial) {
          return SplashScreen();
        }
        if (state is AuthenticationSuccess) {
          return HomeScreen(name: state.displayName);
        }
        if (state is AuthenticationSuccess) {
          return HomeScreen(name: state.displayName);
        }
      }),
    );
  }
}
