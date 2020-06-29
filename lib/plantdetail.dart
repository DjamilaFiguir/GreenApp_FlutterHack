import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:greenapp_flutterhack/constants/colors.dart';

class PlantDetail extends StatefulWidget {
  @override
  _PlantDetailState createState() => _PlantDetailState();
}

class _PlantDetailState extends State<PlantDetail> {
  String season = "Spring";
  String indTitel = "All to know...";
  String indSubtitle =
      "Echeveria is a large genus of flowering plants in the family Crassulaceae, native to semi-desert areas of Central America, Mexico and northwestern South America.";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.cleargreen,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        color: Color(0xfff4ebc1)),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 10.0,
                      left: MediaQuery.of(context).size.width - 120.0),
                  child: Row(
                    children: [
                      Text(
                        "Remaind",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 19.0,
                            fontWeight: FontWeight.w600,
                            color: AppColors.selectedColor),
                      ),
                      SizedBox(width: 7.0),
                      Icon(Icons.notifications_active,
                          color: Colors.white, size: 24.0),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 45.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Flower',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 21.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white60),
                      ),
                      Text(
                        'Echeveria',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 42.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'SEASON',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 19.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white60),
                      ),
                      Text(
                        'Spring',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 26.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'Price',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 19.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white60),
                      ),
                      Text(
                        '\$45',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 26.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        children: [
                          Container(
                            height: 45.0,
                            width: 45.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white),
                            child: Center(
                              child: Icon(
                                Icons.shopping_basket,
                                color: AppColors.clearMgreen,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            height: 45.0,
                            width: 45.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white),
                            child: Center(
                              child: Icon(
                                Icons.favorite,
                                color: AppColors.clearMgreen,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            height: 45.0,
                            width: 45.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white),
                            child: Center(
                              child: Icon(
                                Icons.share,
                                color: AppColors.clearMgreen,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: Opacity(
                    opacity: 0.4,
                    child: Image(
                      image: AssetImage('assets/spring.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: (MediaQuery.of(context).size.height / 2) - 170.0,
                  left: (MediaQuery.of(context).size.width / 2) - 18.0,
                  child: Image(
                    image: AssetImage('assets/echeveria.png'),
                    fit: BoxFit.cover,
                    height: 220.0,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height - 275.0,
                        left: 20.0,
                        right: 15.0),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            indTitel,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 27.0,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            indSubtitle,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            )
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xfff4ebc1),
          items: <Widget>[
            Icon(Icons.book),
            Icon(Icons.info),
            Icon(Icons.filter_vintage),
            Icon(Icons.format_color_fill),
          ],
          animationDuration: Duration(seconds: 1),
          onTap: (index) {
            if (index == 0) {
              setState(() {
                indTitel = "All to know";
                indSubtitle =
                    "Echeveria is a large genus of flowering plants in the family Crassulaceae, native to semi-desert areas of Central America, Mexico and northwestern South America.";
              });
            } else if (index == 1) {
              setState(() {
                indTitel = "Exposition";
                indSubtitle =
                    "- Needs excellent light.\n- Few hours of sunshine per day.";
              });
            } else if (index == 2) {
              setState(() {
                indTitel = "Substrat";
                indSubtitle =
                    "Prepare a mixture of 2/3 of potting soil and 1/3 of river sand of medium grain size. The pot must imperatively be drilled and a bed of gravel or clay balls equivalent to 20% of the total volume will be provided at the bottom of it to ensure good drainage";
              });
            } else {
              setState(() {
                indTitel = "Watering";
                indSubtitle =
                    "Water once a week during the summer season but always allow the mixture to dry between two waterings.";
              });
            }
          },
        ),
      ),
    );
  }
}
