import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:greenapp_flutterhack/plantdetail.dart';
import 'package:intl/intl.dart';
import 'package:nice_button/NiceButton.dart';
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
  var firstColor = AppColors.clearMgreen, secondColor = AppColors.clearMgreen;
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
              getPlantCard('assets/echeveria.png', '45', 'SPRING', 'Echeveria'),
              SizedBox(width: 15.0),
              getPlantCard(
                  'assets/flowerplant.png', '15', 'SPRING', 'Red flower'),
              SizedBox(width: 15.0),
              getPlantCard('assets/plant.png', '55', 'ALL', 'Trees'),
              SizedBox(width: 15.0),
              getPlantCard('assets/flower.png', '25', 'WINTER', 'Ficus'),
              SizedBox(width: 15.0),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
          child: Column(
            children: [
              Center(
                  child: NiceButton(
                background: Colors.transparent,
                radius: 15,
                padding: const EdgeInsets.all(15),
                text: "Add Afforestation Campaign",
                fontSize: 18,
                elevation: 1.0,
                width: 300,
                icon: Icons.add_location,
                gradientColors: [secondColor, firstColor],
                onPressed: () {
                  _showcontent();
                },
              )),
            ],
          ),
        ),
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
                        ),
                        Text(
                          plantType,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
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
                  child: Icon(Icons.shopping_basket,
                      color: AppColors.clearMgreen)),
            ),
          ),
        ),
      ],
    );
  }

  void _showcontent() {
    showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          scrollable: true,
          title: new Text(
            'Afforestation campaign',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          content: new SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: new ListBody(
              children: <Widget>[
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
                    padding: const EdgeInsets.only(left: 10),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.place),
                            border: InputBorder.none,
                            hintText: "Place"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
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
                    padding: const EdgeInsets.only(left: 10),
                    child: Center(
                      child: BasicDateTimeField(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              color: Colors.black26,
              child: new Text(
                'Cancel',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              color: AppColors.green,
              child: new Text(
                'Continue',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                // Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}

class BasicDateTimeField extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd HH:mm");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      //Text('Basic date & time field (${format.pattern})'),
      DateTimeField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.date_range),
            border: InputBorder.none,
            hintText: "DateTime"),
        format: format,
        onShowPicker: (context, currentValue) async {
          final date = await showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100));
          if (date != null) {
            final time = await showTimePicker(
              context: context,
              initialTime:
                  TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
            );
            return DateTimeField.combine(date, time);
          } else {
            return currentValue;
          }
        },
      ),
    ]);
  }
}
