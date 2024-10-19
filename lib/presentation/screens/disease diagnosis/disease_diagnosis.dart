import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/presentation/screens/disease%20diagnosis/rating_diagnosis.dart';
import 'package:Health_Spot/presentation/widget/default_button.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';
import 'package:sizer/sizer.dart';

class DiseaseDiagnosis extends StatelessWidget {
  const DiseaseDiagnosis({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 3.h,
                ),
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Do you feel cold ?',
                          // overflow: TextOverflow.ellipsis,
                          // color: Colors.black,
                          // fontFamily: AppFonts.kFontstimr,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      endIndent: 4.w,
                      indent: 4.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Do you feel dizzy ?',
                          // overflow: TextOverflow.ellipsis,
                          // color: Colors.black,
                          // fontFamily: AppFonts.kFontstimr,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      endIndent: 4.w,
                      indent: 4.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Do you feel hot ?',
                          // overflow: TextOverflow.ellipsis,
                          // color: Colors.black,
                          // fontFamily: AppFonts.kFontstimr,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      endIndent: 4.w,
                      indent: 4.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Do you feel headache ?',
                          // overflow: TextOverflow.ellipsis,
                          // color: Colors.black,
                          // fontFamily: AppFonts.kFontstimr,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      endIndent: 4.w,
                      indent: 4.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Are you vomiting ?',
                          // overflow: TextOverflow.ellipsis,
                          // color: Colors.black,
                          // fontFamily: AppFonts.kFontstimr,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      endIndent: 4.w,
                      indent: 4.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Do you feel pain in bones ?',
                          // overflow: TextOverflow.ellipsis,
                          // color: Colors.black,
                          // fontFamily: AppFonts.kFontstimr,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      endIndent: 4.w,
                      indent: 4.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  children: [
                    Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Do you feel sleepy all the time ?',
                          // overflow: TextOverflow.ellipsis,
                          // color: Colors.black,
                          // fontFamily: AppFonts.kFontstimr,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      endIndent: 4.w,
                      indent: 4.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: DefaultButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RatingDiagnosis(),
                    ));
              },
              textWidget: const DefaultText(
                text: 'Submit',
                fontWeight: FontWeight.bold,
                fontFamily: AppFonts.kFontsCourgette,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
