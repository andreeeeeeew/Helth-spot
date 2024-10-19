import 'package:Health_Spot/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/presentation/widget/def_text.dart';
import 'package:sizer/sizer.dart';

class PoisoningScreen extends StatefulWidget {
  const PoisoningScreen({Key? key}) : super(key: key);

  @override
  State<PoisoningScreen> createState() => _PoisoningScreenState();
}

class _PoisoningScreenState extends State<PoisoningScreen> {
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
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 26,
          ),
          color: AppColors.kColorDark,
        ),
        title:
        Text(
          arabic == false ? 'Poisoning' : 'تسمم',
          textAlign: arabic == false ? TextAlign.right : TextAlign.left,
          style:  TextStyle(
            fontSize: 19.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.kColora,
            fontFamily: AppFonts.kFontsCourgette,
          ),
        ),

      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: arabic == false
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Text(
                arabic == false ? 'Poisoning' : 'تسمم',
                textAlign: arabic == false ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kColora,
                  fontFamily: AppFonts.kFontsCourgette,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 1.h,
              ),
              Column(
                crossAxisAlignment: arabic == false
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children: [
                  Text(
                    arabic == false
                        ? 'Poisoning may occur by mouth, inhalation, or even skin.The causes of poisoning in the home are many.'
                        : 'قد يحدث التسمم عن طريق الفم أو الاستنشاق أو حتى الجلد ، وأسباب التسمم في المنزل كثيرة',
                    textAlign:
                    arabic == true ? TextAlign.right : TextAlign.left,
                    style: TextStyle(
                        fontSize: 13.sp
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false ? 'First aid for a poisoned person' : 'الإسعافات الأولية لشخص مسموم',
                textAlign: arabic == false ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kColora,
                  fontFamily: AppFonts.kFontsCourgette,
                ),
              ),

              SizedBox(
                height: 1.h,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/images/Poisoning step.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //assets/images/Poisoning step.jpg
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Call an ambulance.'
                    : 'اتصل بالإسعاف',
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
                    ? '• Give the victim two glasses of water or milk.'
                    : 'أعط المصاب كأسين من الحليب أو الماء',
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
                    ? '• Maintaining his normal body temperature.A child under five years of age, one cup (water).'
                    : 'المحافظة على درجة حرارة جسمه الطبيعية: طفل دون الخامسة من العمر كوب واحد (ماء)',
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
                    ? '• Do not induce vomiting.'
                    : 'لا تقم بتحريض القيء',
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
                    ? '• Keep the container of poison to show to the doctor.'
                    : 'احتفظ بوعاء السم لإظهاره للطبيب',
                textAlign:
                arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontSize: 13.sp
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
