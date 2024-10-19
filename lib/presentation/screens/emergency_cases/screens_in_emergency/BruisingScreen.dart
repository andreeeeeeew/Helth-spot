import 'package:Health_Spot/constant/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:sizer/sizer.dart';

class BruisingScreen extends StatefulWidget {
  const BruisingScreen({Key? key}) : super(key: key);

  @override
  State<BruisingScreen> createState() => _BruisingScreenState();
}

class _BruisingScreenState extends State<BruisingScreen> {
  bool arabic = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              arabic == false ? arabic = true : arabic = false;
              setState(() {});
            },
            icon: const Icon(
              Icons.translate,
              color: AppColors.kColora,
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 26,
          ),
          color: AppColors.kColorDark,
        ),
        title:
        Text(
          style: TextStyle(
            fontSize: 19.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.kColora,
            fontFamily: AppFonts.kFontsCourgette,
          ),
          arabic == false
              ? 'Bruises and scratches'
              : 'كدمات وخدوش',
          textAlign:
          arabic == true ? TextAlign.right : TextAlign.left,
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: arabic == false
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Text(
                arabic == false ? 'Bruises' : 'كدمات',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColorDark),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Put an ice pack or a cold compress on the bruise to relieve pain.'
                    : 'ضع كيس ثلج أو كمادة باردة على الكدمة لتخفيف الألم .',
                textAlign:
                arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontSize: 13.sp
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• If the pain persists, call the doctor.'
                    : 'إذا استمر الألم ، اتصل بالطبيب .',
                textAlign:
                arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontSize: 13.sp
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                arabic == false ? 'Scratches' : 'خدوش',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColorDark),
              ),

              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Wash the scratch and around it with water.'
                    : 'اغسل الخدش ومن حوله بالماء .',
                textAlign:
                arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontSize: 13.sp
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Wash it with soap and water or an antiseptic.'
                    : 'اغسلها بالماء والصابون أو بمطهر .',
                textAlign:
                arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontSize: 13.sp
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Put an antibacterial ointment on it.'
                    : 'ضع مرهمًا مضادًا للبكتيريا عليه .',
                textAlign:
                arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontSize: 13.sp
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
