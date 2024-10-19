import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/presentation/view/list_item_ar.dart';
import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/presentation/screens/herbal%20medicine/herbal%20screens/arthritis_screen.dart';
import 'package:Health_Spot/presentation/screens/herbal%20medicine/herbal%20screens/bronchitis_screen.dart';
import 'package:Health_Spot/presentation/screens/herbal%20medicine/herbal%20screens/sorethroat_screen.dart';
import 'package:Health_Spot/presentation/screens/herbal%20medicine/herbal%20screens/stomach_pain_screen.dart';
import 'package:Health_Spot/presentation/screens/herbal%20medicine/herbal%20screens/toothache_and_gingivitis_screen.dart';
import 'package:Health_Spot/presentation/view/list_item.dart';
import 'package:sizer/sizer.dart';

class HerbalMedicine extends StatefulWidget {
  const HerbalMedicine({Key? key}) : super(key: key);

  @override
  State<HerbalMedicine> createState() => _HerbalMedicineState();
}

class _HerbalMedicineState extends State<HerbalMedicine> {
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
                Color(0xff144207),
                Color(0xff6fc74c),
                Color(0xffdaf2d9),
                Colors.white,
                Colors.white
              ],
            ),
          ),
          child: Column(
//  physics: NeverScrollableScrollPhysics(),

            children: [
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 5.6.h,
                    child: IconButton(
                        onPressed: () {
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
              // SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.only(left: 8.w,right: 10.w),
                child: Row(
                  mainAxisAlignment:
                  arabic==true?MainAxisAlignment.end:MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 4.2.h,
                      child:
                      Text(
                        arabic == false ? 'Herbal medicine' : 'طب بالأعشاب',
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
                height: 6.h,
              ),
              Container(
//  height: MediaQuery.of(context).size.height ,
                height: 78.2.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(75.0)),
                ),
                child: Column(
                  crossAxisAlignment: arabic == false
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    arabic==false?const list_Item(
                      diseasName: 'Arthritis',
                      imgPath: 'assets/images/herbal/arthritis.jpg',
                      screenName: ArthritisScreen(), heroTag: 'Head Pain',
                    ):
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        list_Item_ar(
                          diseasName: 'التهاب المفاصل',
                          imgPath: 'assets/images/herbal/arthritis.jpg',
                          screenName: ArthritisScreen(), heroTag: 'Head Pain',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    arabic==false?const list_Item(
                      diseasName: 'Sore Throat',
                      imgPath: 'assets/images/herbal/throat.jpg',
                      screenName: SoreThroatScreen(), heroTag: 'Head Pain',
                    ):
                    const list_Item_ar(
                      diseasName: 'إلتهاب الحلق',
                      imgPath: 'assets/images/herbal/throat.jpg',
                      screenName: SoreThroatScreen(), heroTag: 'Head Pain',
                    ),

                    const SizedBox(
                      height: 25,
                    ),

                    arabic==false?const list_Item(
                      diseasName: 'Stomach Pain',
                      imgPath: 'assets/images/herbal/stomak.jpg',
                      screenName: StomachPainScreen(), heroTag: 'Head Pain',
                    ):
                    const list_Item_ar(
                      diseasName: 'آلام في المعدة',
                      imgPath: 'assets/images/herbal/stomak.jpg',
                      screenName: StomachPainScreen(), heroTag: 'Head Pain',
                    ),

                    const SizedBox(
                      height: 25,
                    ),

                    arabic==false?const list_Item(
                      diseasName: 'Toothache And Gingivitis',
                      imgPath: 'assets/images/herbal/tooth.jpg',
                      screenName: ToothacheAndGingivitisScreen(), heroTag: 'Head Pain',
                    ):
                    const list_Item_ar(
                      diseasName: 'وجع الاسنان والتهاب اللثة',
                      imgPath: 'assets/images/herbal/tooth.jpg',
                      screenName: ToothacheAndGingivitisScreen(), heroTag: 'Head Pain',
                    ),


                    const SizedBox(
                      height: 25,
                    ),
                    arabic==false?const list_Item(
                      diseasName: 'Bronchitis',
                      imgPath: 'assets/images/herbal/bronchitis.jpg',
                      screenName: BronchitisScreen(), heroTag: 'Head Pain',
                    ):
                    const list_Item_ar(
                      diseasName: 'التهاب الشعب الهوائية',
                      imgPath: 'assets/images/herbal/bronchitis.jpg',
                      screenName: BronchitisScreen(), heroTag: 'Head Pain',
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
