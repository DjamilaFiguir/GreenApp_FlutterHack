import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  Icon cardIcon = Icon(Icons.alarm);
  Color cardColor = Color(0xffffecc7);
  bool isVisible = true;
  String subTitleCard =
      "The spider plant need some water, you will do it now or should i remind you after 5 minit ?";
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
            elevation: 10,
            color: cardColor,
            child: Column(
              children: [
                ListTile(
                  leading: cardIcon,
                  title: Text("Spider Plant "),
                  subtitle: Text(subTitleCard),
                ),
                Visibility(
                  visible: isVisible,
                  child: ButtonBar(
                    children: [
                      FlatButton(
                        child: Text("remind me"),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: Text("Ok, Now"),
                        onPressed: () {
                          setState(() {
                            cardColor = Color(0xffcceabb);
                            cardIcon = Icon(Icons.check_circle);
                            isVisible = false;
                            subTitleCard =
                                "Spider Plant thanks you for the water...";
                          });
                        },
                      )
                    ],
                  ),
                ),
              ],
            )),
        Card(
            elevation: 10,
            color: Color(0xffcceabb),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.check_circle),
                  title: Text("Golden Pothos"),
                  subtitle:
                      Text("The Golden Pothos thanks you for the water..."),
                ),
              ],
            )),
        Card(
            elevation: 10,
            color: Color(0xffcceabb),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.check_circle),
                  title: Text("mother in law tongue"),
                  subtitle:
                      Text("mother in law tongue thanks you for the water..."),
                ),
              ],
            )),
        Card(
            elevation: 10,
            color: Color(0xffffb6b9),
            child: Column(children: [
              ListTile(
                leading: Icon(Icons.clear),
                title: Text("Peace Lily "),
                subtitle: Text(
                    "Peace Lily is angry because you forgot her, Don't forget next time"),
              ),
            ])),
      ],
    );
  }
}
