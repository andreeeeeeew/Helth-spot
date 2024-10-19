import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/presentation/screens/physio/physio%20screens/back_pain.dart';
import 'package:Health_Spot/presentation/screens/physio/physio%20screens/knee_pain.dart';
import 'package:Health_Spot/presentation/screens/physio/physio%20screens/leg_pain.dart';
import 'package:Health_Spot/presentation/screens/physio/physio%20screens/shoulder_pain.dart';
import 'package:Health_Spot/presentation/view/list_item_ar.dart';
import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/presentation/screens/physio/physio%20screens/head_pain.dart';
import 'package:Health_Spot/presentation/view/list_item.dart';
import 'package:sizer/sizer.dart';

class Physio extends StatefulWidget {
  const Physio({Key? key}) : super(key: key);

  @override
  State<Physio> createState() => _PhysioState();
}

class _PhysioState extends State<Physio> {

  bool arabic=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.kColor3,
            AppColors.kColor2,
            AppColors.kColor1,
            Colors.white,
            Colors.white
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: arabic == false
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        children: [
          SizedBox(height: 3.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 5.6.h,
                child: IconButton(
                    onPressed: ()  {
                      Navigator.pop(context);

                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: AppColors.kColor1,
                    )),
              ),
              IconButton(
                onPressed: () {
                  arabic == false ? arabic = true : arabic = false;
                  setState(() {});
                },
                icon: const Icon(
                  Icons.translate,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(height: 3.h),
          Padding(
            padding: EdgeInsets.only(left: 8.w,right: 8.w),
            child: Row(
              mainAxisAlignment:
              arabic==true?MainAxisAlignment.end:MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4.2.h,
                  child:
                  Text(
                    arabic == false ? 'Physio Therapy' : 'العلاج الطبيعي',
                    textAlign: arabic == false ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: AppFonts.kFontsCourgette,
                    ),
                  ),

                ), //textAlign: TextAlign.start,),
              ],
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Container(
//  height: MediaQuery.of(context).size.height ,
            height: 78.h,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(75.0)),
            ),
            child: Column(
              crossAxisAlignment: arabic == false
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.end,
              children: [
                // SearchBar(),
                const SizedBox(
                  height: 30,
                ),
                arabic==false?const list_Item(
                  diseasName: 'Head Pain',
                  imgPath: 'assets/images/head.png',
                  screenName: HeadPain(), heroTag: 'Head Pain',
                ):
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    list_Item_ar(
                      diseasName: 'آلام الرأس',
                      imgPath: 'assets/images/head.png',
                      screenName: HeadPain(), heroTag: 'Head Pain',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                arabic==false?const list_Item(
                  diseasName: 'Back Pain',
                  imgPath: 'assets/images/back.png',
                  screenName: BackPain(), heroTag: 'Head Pain',
                ):
                const list_Item_ar(
                  diseasName: 'ألم في الظهر',
                  imgPath: 'assets/images/back.png',
                  screenName: BackPain(), heroTag: 'Head Pain',
                ),

                const SizedBox(
                  height: 25,
                ),
                arabic==false?const list_Item(
                  diseasName: 'Shoulder Pain',
                  imgPath: 'assets/images/shoulder.png',
                  screenName: ShoulderPain(), heroTag: 'Head Pain',
                ):
                const list_Item_ar(
                  diseasName: 'الم الكتف',
                  imgPath: 'assets/images/shoulder.png',
                  screenName: ShoulderPain(), heroTag: 'Head Pain',
                ),

                const SizedBox(
                  height: 25,
                ),
                arabic==false?const list_Item(
                  diseasName: 'Knee Pain',
                  imgPath: 'assets/images/knee.png',
                  screenName: KneePain(), heroTag: 'Head Pain',
                ):
                const list_Item_ar(
                  diseasName: 'ألم الركبة',
                  imgPath: 'assets/images/knee.png',
                  screenName: KneePain(), heroTag: 'Head Pain',
                ),

                const SizedBox(
                  height: 25,
                ),
                arabic==false?const list_Item(
                  diseasName: 'Leg Pain',
                  imgPath: 'assets/images/leg.png',
                  screenName: LegPain(), heroTag: 'Head Pain',
                ):
                const list_Item_ar(
                  diseasName: 'الم الساق',
                  imgPath: 'assets/images/leg.png',
                  screenName: LegPain(), heroTag: 'Head Pain',
                ),

                const SizedBox(
                  height: 25,
                ),

              ],
            ),
          ),
        ],
      ),
    ));
  }
}
