import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:greenapp_flutterhack/view/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Green ++',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Color(0XFFEFF3F6),
        ),
        home: LoginPage());
=======
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenapp_flutterhack/Repository/user_repository.dart';
import 'package:greenapp_flutterhack/view/home_screen.dart';
import 'package:greenapp_flutterhack/view/login_screen.dart';
import 'package:greenapp_flutterhack/view/splashscreen.dart';

import 'bloc/authentification/authentification_bloc.dart';
import 'bloc_delegate.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final UserRepository userRepository = UserRepository();
  runApp(
    BlocProvider(
      create: (context) => AuthentificationBloc(
        userRepository: userRepository,
      )..add(AuthenticationStarted()),
      child: App(userRepository: userRepository),
    ),
  );
}

class App extends StatelessWidget {
  final UserRepository _userRepository;

  App({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AuthentificationBloc, AuthentificationState>(
        builder: (context, state) {
          if (state is AuthenticationFailure) {
            return LoginScreen(userRepository: _userRepository);
          }
          if (state is AuthenticationSuccess) {
            return HomeScreen(name: state.displayName);
          }
          return SplashScreen();
        },
      ),
    );
>>>>>>> master
  }
}
