import 'package:flutter/material.dart';
import 'package:greenapp_flutterhack/constants/colors.dart';
import 'package:greenapp_flutterhack/plantslist.dart';

class PlantsPage extends StatefulWidget {
  @override
  _PlantsPageState createState() => _PlantsPageState();
}

class _PlantsPageState extends State<PlantsPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        // SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Container(
              height: 41,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.cleargreen,
                  ),
                  color: Colors.white, //Color(0XFFEFF3F6),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        offset: Offset(2, 2),
                        blurRadius: 2.0,
                        spreadRadius: 2.0),
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        //  hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.format_list_bulleted)),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.withOpacity(0.5),
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'All',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Trees',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Flowers',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Plants',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 200.0,
          child: TabBarView(
            controller: tabController,
            children: <Widget>[
              PlantList(),
              PlantList(),
              PlantList(),
              PlantList()
            ],
          ),
        ),
      ],
    ));
  }
}
