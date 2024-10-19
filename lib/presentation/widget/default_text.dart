import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DefaultText extends StatelessWidget {
  const DefaultText(
      {Key? key,
      required this.text,
      this.fontWeight = FontWeight.normal,
      this.fontSize = 20,
      this.fontFamily,
      this.color = Colors.white,
      this.maxLines})
      : super(key: key);
  final String text;
  final String? fontFamily;
  final FontWeight fontWeight;
  final double fontSize;
  final int? maxLines;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize.sp,
        fontFamily: fontFamily,
        color: color,
      ),
    );
  }
}
