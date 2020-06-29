import 'package:flutter/material.dart';
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
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: Color(0XFFEFF3F6),
        ),
        home: LoginPage());
  }
}
