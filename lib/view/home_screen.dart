import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenapp_flutterhack/bloc/authentification/authentification_bloc.dart';


class HomeScreen extends StatelessWidget{
  
  final String name;

  HomeScreen({Key key, @required this.name}):super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app), 
            onPressed: (){
              BlocProvider.of<AuthentificationBloc>(context).add(
                AuthenticationLoggedOut(),
              );
            })
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Welcome Home'),),
        ],
      ),
    );
  }


}