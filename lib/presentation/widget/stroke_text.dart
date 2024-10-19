import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StrokeText extends StatelessWidget {
  const StrokeText(
      {Key? key,
      required this.text,
      this.strokeThickness = 2,
      this.strokeColor = Colors.black,
      this.fontSize = 20,
      this.textColor = Colors.white,
      this.fontFamily})
      : super(key: key);
  final String text;
  final String? fontFamily;
  final double strokeThickness;
  final Color strokeColor;
  final Color textColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // Stroked text as border.
        Text(
          text,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: fontSize.sp,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeThickness
              ..color = strokeColor,
          ),
        ),
        // Solid text as fill.
        Text(
          text,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: fontSize.sp,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
