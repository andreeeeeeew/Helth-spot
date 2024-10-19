import 'package:Health_Spot/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:sizer/sizer.dart';

class FractionsScreen extends StatefulWidget {
  const FractionsScreen({Key? key}) : super(key: key);

  @override
  State<FractionsScreen> createState() => _FractionsScreenState();
}

class _FractionsScreenState extends State<FractionsScreen> {
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
        title: Text(
          style: TextStyle(
            fontSize: 19.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.kColora,
            fontFamily: AppFonts.kFontsCourgette,
          ),
          arabic == false ? 'Fractions' : 'الكسور',
          textAlign: arabic == true ? TextAlign.right : TextAlign.left,
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: arabic == false
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Text(
                style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kColora,
                  fontFamily: AppFonts.kFontsCourgette,
                ),
                arabic == false ? 'Fractions' : 'الكسور',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false
                    ? 'A fracture is a split or crack in the bone that occurs as a result of a strong or sudden shock On the bone, as in cases of road accidents or falls. What does the fracture look like?'
                    : 'الكسر هو شق أو صدع في العظم يحدث نتيجة صدمة قوية أو مفاجئة على العظم ، كما في حالات حوادث الطرق أو السقوط. كيف يبدو الكسر؟',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false ? '• severe pain' : 'ألم حاد .',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Unusually shaped broken limbs'
                    : 'أطراف مكسورة تتشكل بشكل غير عادي .',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• The area is swollen and sore to the touch'
                    : 'المنطقة منتفخة ومؤلمة عند اللمس .',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Unusual movement of the broken limbs'
                    : 'حركة غير عادية للأطراف المكسورة .',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kColora,
                  fontFamily: AppFonts.kFontsCourgette,
                ),
                arabic == false
                    ? 'What to do in cases of fractures?'
                    : 'ماذا تفعل في حالات الكسور؟',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Place the casualty in a comfortable position..(Do not attempt to move the casualty if it is Neck or back injury).'
                    : 'ضع المصاب في وضع مريح .. (لا تحاول تحريك المصاب إذا كان إصابة في العنق أو الظهر) ',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Do not try to give him anything by mouth.'
                    : 'لا تحاولي إعطائه أي شيء عن طريق الفم',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Never try to move the injured part and keep the limbs straight.'
                    : 'لا تحاول أبدًا تحريك الجزء المصاب والحفاظ على استقامة الأطراف',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Do not tie knots above the site of injury.'
                    : 'لا تربط العقد فوق موقع الإصابة',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Remove or cut the stopcock covering the fracture.'
                    : 'إزالة أو قطع محبس الحنفية التي تغطي الكسر',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Do not try to clean the wound resulting from the fracture, but try to stop the bleeding Cover the wound with a sterile cloth.'
                    : 'لا تحاول تنظيف الجرح الناتج عن الكسر ، لكن حاول وقف النزيف غط الجرح بقطعة قماش معقمة',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Put an ice pack on the painful area.'
                    : 'ضع كيس ثلج على المنطقة المؤلمة',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false
                    ? '• Call the ambulance.'
                    : 'اتصل بالإسعاف',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
