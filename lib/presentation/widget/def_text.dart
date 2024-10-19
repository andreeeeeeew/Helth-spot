import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Def_Text extends StatelessWidget {
   Def_Text(this.text,{Key? key, }) : super(key: key);
   String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: 13.sp),);
  }
}
