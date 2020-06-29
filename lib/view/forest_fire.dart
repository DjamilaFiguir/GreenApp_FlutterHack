import 'dart:io';

import 'package:flutter/material.dart';

class ForestFire extends StatefulWidget {
  @override
  _ForestFireState createState() => _ForestFireState();
}

class _ForestFireState extends State<ForestFire> {
  String number0 = "1 personne";
  String number01 = "";
  String number1 = "210 personnes";
  String number2 = "50 personnes";
  String number3 = "5 personnes";

  bool number1V = true;
  bool number2V = true;
  bool number3V = true;

  bool isVisibil = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Visibility(
            visible: isVisibil,
            child: Card(
              elevation: 10,
              color: Color(0xffffb6b9),
              child: Column(children: [
                ListTile(
                  leading: Icon(Icons.clear),
                  title: Text(number0),
                  subtitle: Text(number01),
                ),
              ]),
            ),
          ),
          Card(
            elevation: 10,
            color: Color(0xffffb6b9),
            child: Column(children: [
              ListTile(
                leading: Icon(Icons.clear),
                title: Text(number1),
                subtitle: Text("Report a fire in this location: Algeria, Oran"),
              ),
              Visibility(
                visible: number1V,
                child: ButtonBar(
                  children: [
                    FlatButton(
                      child: Text(
                        'Confirme',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        setState(() {
                          number1 = "211 personnes";
                          number1V = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Card(
            elevation: 10,
            color: Color(0xffffb6b9),
            child: Column(children: [
              ListTile(
                leading: Icon(Icons.clear),
                title: Text(number2),
                subtitle: Text("Report a fire in this location: Maroc, Rebat"),
              ),
              Visibility(
                visible: number2V,
                child: ButtonBar(
                  children: [
                    FlatButton(
                      child: Text(
                        'Confirme',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        setState(() {
                          number2 = "51 personnes";
                          number2V = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ]),
          ),
          Card(
            elevation: 10,
            color: Color(0xffffb6b9),
            child: Column(children: [
              ListTile(
                leading: Icon(Icons.clear),
                title: Text(number3),
                subtitle: Text("Report a fire in this location: France, Paris"),
              ),
              Visibility(
                visible: number3V,
                child: ButtonBar(
                  children: [
                    FlatButton(
                      child: Text(
                        'Confirme',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        setState(() {
                          number3 = "6 personnes";
                          number3V = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: Color(0xffffb6b9),
                  title: Text("Report a Forest Fire !!"),
                  content: TextField(
                    onChanged: (value) {
                      setState(() {
                        number01 =
                            "Report fire in this location : " + "${value}";
                      });
                    },
                  ),
                  actions: [
                    FlatButton(
                      child: Text("Cancel"),
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                    FlatButton(
                      child: Text("Confirme"),
                      onPressed: () {
                        setState(() {
                          isVisibil = true;
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}
