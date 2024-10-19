import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:sizer/sizer.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.color = AppColors.kColorLite,
    this.height = 7,
    this.width = 50,
    this.radius = 100,
    this.elevation = 20,
    this.splashColor = AppColors.kColor2,
    required this.onPressed,
    required this.textWidget,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 20,
  }) : super(key: key);
  final Color color;
  final Color splashColor;
  final double height;
  final double width;
  final double radius;
  final double elevation;
  final double fontSize;
  final VoidCallback onPressed;
  final FontWeight fontWeight;
  final Widget textWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 5),
          )
        ],
        gradient: const LinearGradient(
          colors: [
            AppColors.kColor3,
            AppColors.kColor2,
            AppColors.kColor1,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          transform: GradientRotation(0.7),
        ),
      ),
      child: MaterialButton(

          // color: color,
          height: height.h,
          minWidth: width.w,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          elevation: elevation,
          splashColor: splashColor,
          onPressed: onPressed,
          child: textWidget),
    );
  }
}
