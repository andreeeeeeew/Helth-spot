import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/presentation/screens/home_screen/home_screen.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: [], backgroundColorMenu: AppColors.kColor2);
  }
}
