import 'package:flutter/material.dart';
import 'package:greenapp_flutterhack/plantdetail.dart';

import 'constants/colors.dart';

class PlantList extends StatefulWidget {
  @override
  _PlantListState createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  ScrollController _scrollController;

  List allDescriptions = [
    'Aloe vera is a succelent plant of the genus Aloe. I\'ts medicinal uses and air purifying ability make it the plant that you shouldn\'t live without.',
    'Some other description',
    'Third description'
  ];

  String description;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changedesc);
    setState(() {
      description = allDescriptions[0];
    });
  }

  changedesc() {
    var value = _scrollController.offset.round();
    var descIndex = (value / 150).round();
    print(value);
    setState(() {
      description = allDescriptions[descIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 280.0,
          child: ListView(
            padding: EdgeInsets.only(left: 25.0),
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getPlantCard(
                  'assets/echeveria.png', '45', 'OUTDOOR', 'Echeveria'),
              SizedBox(width: 15.0),
              getPlantCard('assets/plant.png', '15', 'OUTDOOR', 'Tree'),
              SizedBox(width: 15.0),
              getPlantCard(
                  'assets/whiteplant.png', '55', 'OUTDOOR', 'whiteplant'),
              SizedBox(width: 15.0),
              getPlantCard('assets/ficus.png', '25', 'INDOOR', 'Ficus'),
              SizedBox(width: 15.0),
              getPlantCard('assets/smallplant.png', '20', 'INDOOR', 'Ficus'),
              SizedBox(width: 15.0),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            'Description',
            style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.black,
                fontSize: 17.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(
            description,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 12.0,
            ),
          ),
        )
      ],
    );
  }

  getPlantCard(
      String imgPath, String price, String plantType, String plantName) {
    return Stack(
      children: <Widget>[
        Container(
          height: 240.0,
          width: 180.0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppColors.cleargreen),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        Text(
                          '\$' + price,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(width: 10.0)
                  ],
                ),
                Image(
                  image: AssetImage(imgPath),
                  height: 145.0,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 25.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          plantName,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => PlantDetail()));
          },
          child: Padding(
            padding: EdgeInsets.only(left: 65.0, top: 213.0),
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white),
              child: Center(
                  child: Icon(Icons.live_help, color: AppColors.clearMgreen)),
            ),
          ),
        )
      ],
    );
  }
}
