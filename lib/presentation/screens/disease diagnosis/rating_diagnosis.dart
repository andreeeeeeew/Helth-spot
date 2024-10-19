import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/presentation/screens/home_screen/home_screen.dart';
import 'package:Health_Spot/presentation/widget/default_button.dart';
import 'package:sizer/sizer.dart';

import '../../widget/default_text.dart';

class RatingDiagnosis extends StatelessWidget {
  const RatingDiagnosis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.kColor2,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const DefaultText(
          text: 'Disease diagnosis',
          color: Colors.black,
          fontFamily: AppFonts.kOleoscript,
          fontSize: 24,
        ),
      ),
      floatingActionButton: DefaultButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Home()),
              (route) => false,
            );
          },
          // height: 5,
          width: 40,
          textWidget: const DefaultText(
            text: 'Home',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )),
      body: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          Image.asset('assets/images/rating.png'),
        ],
      ),
    );
  }
}
