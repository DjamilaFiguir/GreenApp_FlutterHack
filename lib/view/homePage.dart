import 'package:flutter/material.dart';
import 'package:greenapp_flutterhack/constants/colors.dart';
import 'package:greenapp_flutterhack/view/favoritePage.dart';
import 'package:greenapp_flutterhack/view/plantsPage.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/hidden_drawer/screen_hidden_drawer.dart';
import 'package:hidden_drawer_menu/menu/item_hidden_menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ScreenHiddenDrawer> itens = new List();
  @override
  void initState() {
    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Plants",
          icon: Icons.filter_vintage,
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 23.0),
          colorLineSelected: AppColors.selectedColor,
        ),
        PlantsPage()));
    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Favotire",
          icon: Icons.favorite,
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 23.0),
          colorLineSelected: AppColors.selectedColor,
        ),
        FavoritPage()));
    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Notifications",
          icon: Icons.notifications,
          baseStyle: TextStyle(color: Colors.green, fontSize: 23.0),
          colorLineSelected: AppColors.selectedColor,
        ),
        FavoritPage()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      elevationAppBar: 0.0,
      backgroundColorMenu: AppColors.clearMgreen,
      backgroundColorAppBar: AppColors.clearMgreen,
      screens: itens,
    );
  }
}
