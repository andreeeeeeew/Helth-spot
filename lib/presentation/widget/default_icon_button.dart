import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';

class DefIconButton extends StatelessWidget {
  DefIconButton(
      {super.key,
      required this.fun,
      this.icon,
      this.iconcolor = AppColors.kColorDark});

  final VoidCallback fun;
  final IconData? icon;
  final Color? iconcolor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: fun,
      icon: Icon(
        icon,
        size: 25.0,
      ),
      color: iconcolor,
    );
  }
}
