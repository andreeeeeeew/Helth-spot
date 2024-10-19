//import 'dart:js';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class list_Item_ar extends StatelessWidget {
  const list_Item_ar(
      {Key? key,
        required this.imgPath,
        required this.diseasName,
        required this.screenName, required this.heroTag})
      : super(key: key);
  final String imgPath;
  final String diseasName;
  final Widget screenName;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screenName,
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
            Text(diseasName,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppFonts.kKalam,
                )),
            const SizedBox(width: 10.0),
            Hero(
                tag: heroTag,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(imgPath,
                      fit: BoxFit.cover, height: 75.0, width: 75.0),
                )),
          ]),
        ),
      ),
    );
  }
}
