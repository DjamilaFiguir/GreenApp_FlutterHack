import 'package:flutter/material.dart';
import 'package:greenapp_flutterhack/constants/colors.dart';
import 'package:greenapp_flutterhack/view/homePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 60, left: 60),
        child: ListView(
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Text(
                "We Love Plants",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Text(
                "Sign to continue",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black38),
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color.fromRGBO(0, 153, 102, 130),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        offset: Offset(6, 2),
                        blurRadius: 6.0,
                        spreadRadius: 2.0),
                    BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 0.9),
                        offset: Offset(-6, -2),
                        blurRadius: 6.0,
                        spreadRadius: 2.0)
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Email"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.cleargreen,
                  ),
                  color: Colors.white, //Color(0XFFEFF3F6),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        offset: Offset(6, 2),
                        blurRadius: 6.0,
                        spreadRadius: 2.0),
                    BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 0.9),
                        offset: Offset(-6, -2),
                        blurRadius: 6.0,
                        spreadRadius: 2.0)
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Center(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.green,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Center(
                        child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                    decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              //Color.fromRGBO(124, 190, 74, 1),
                              offset: Offset(6, 2),
                              blurRadius: 6.0,
                              spreadRadius: 2.0),
                          BoxShadow(
                              color: Color.fromRGBO(255, 255, 255, 0.9),
                              offset: Offset(-6, -2),
                              blurRadius: 6.0,
                              spreadRadius: 2.0)
                        ]),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  " Sign Up",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
