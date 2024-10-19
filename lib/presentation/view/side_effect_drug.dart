import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/fonts.dart';

class Drug extends StatelessWidget {
  Drug(this.text, this.color, this.screen);
  String? text;
  Color? color;
  Widget screen;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 30),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: color,
            gradient: const LinearGradient(
                colors: [
                  Color(0xff080742),
                  Color(0xff1791B1),
                  Color(0xffD9ECF2),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                transform: GradientRotation(4.5))),
        child: Text(
          text!,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: AppFonts.kFontsCourgette),
        ),
      ),
    );
  }
}
