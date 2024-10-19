import 'package:Health_Spot/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/presentation/widget/def_text.dart';
import 'package:sizer/sizer.dart';

class FeverScreen extends StatefulWidget {
  const FeverScreen({Key? key}) : super(key: key);

  @override
  State<FeverScreen> createState() => _FeverScreenState();
}

class _FeverScreenState extends State<FeverScreen> {
  bool arabic = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
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
          arabic == false ? 'Fever' : 'حمى',
          textAlign: arabic == true ? TextAlign.right : TextAlign.left,
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
                arabic == false ? 'Fever' : 'حمى',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColorDark),
              ),
              SizedBox(
                height: 2.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    arabic == false
                        ? 'Fever is a high body temperature. It is usually a sign of infection. The fever itself is harmless and possibly beneficial. Fever usually does not need treatment.The average body temperature is 98.6 F (37 C). But the normal body temperature may range from 97 F (36.1 C) to 99 F (37.2 C) or more. Your body temperature may vary depending on how active you are or the time of day. The body temperature of the elderly is generally lower than that of the younger ones.'
                        : 'الحمى هي ارتفاع في درجة حرارة الجسم. عادة ما تكون علامة على الإصابة. الحمى نفسها غير ضارة وربما مفيدة. لا تحتاج الحمى عادة إلى علاج ، حيث يبلغ متوسط درجة حرارة الجسم 98.6 فهرنهايت (37 درجة مئوية). لكن درجة حرارة الجسم الطبيعية قد تتراوح من 97 فهرنهايت (36.1 درجة مئوية) إلى 99 فهرنهايت (37.2 درجة مئوية) أو أكثر. قد تختلف درجة حرارة جسمك اعتمادًا على مدى نشاطك أو الوقت من اليوم. تكون درجة حرارة جسم كبار السن أقل بشكل عام من درجة حرارة الجسم الأصغر سنًا',
                    textAlign:
                        arabic == true ? TextAlign.right : TextAlign.left,
                    style: TextStyle(fontSize: 13.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false
                    ? 'The following thermometer readings generally indicate a fever'
                    : 'تشير قراءات مقياس الحرارة التالية بشكل عام إلى وجود حمى',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColorDark),
              ),
              SizedBox(
                height: 1.h,
              ),
              Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(
                      "assets/images/fever read.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  //assets/images/fever read.jpg
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    width: 90.w,
                    child: Column(
                      crossAxisAlignment: arabic == false
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        Text(
                          arabic == false
                              ? '• A rectal, ear, or temporal artery temperature measurement of 100.4°F (38°C) or higher.'
                              : 'قياس درجة حرارة المستقيم أو الأذن أو الشريان الصدغي تبلغ 100.4 درجة فهرنهايت (38 درجة مئوية) أو أعلى',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Oral temperature of 100 F (37.8 C) or higher.'
                              : 'درجة حرارة الفم 100 فهرنهايت (37.8 درجة مئوية) أو أعلى',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• An armpit temperature of 99 F (37.2 C) or higher.'
                              : 'درجة حرارة الإبط 99 فهرنهايت (37.2 درجة مئوية) أو أعلى',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          arabic == false
                              ? 'Should I treat a fever?'
                              : 'هل يجب أن أعالج الحمى؟',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                              color: AppColors.kColorDark),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          arabic == false
                              ? '• When you or your child is sick, the primary goal is to relieve discomfort and get you comfortable. Treating a fever does not lengthen or shorten the duration of the illness.'
                              : 'عندما تكون أنت أو طفلك مريضًا ، فإن الهدف الأساسي هو تخفيف الانزعاج والشعور بالراحة. علاج الحمى لا يطيل أو يقصر مدة المرض',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? 'Treating a fever in a child'
                              : 'علاج الحمى عند الطفل',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                              color: AppColors.kColorDark),
                        ),

                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Children with a relatively high fever may not show signs of illness or behave ill. Treatment for a fever depends on the degree of discomfort. If your child is restless or restless, these home care strategies may help.'
                              : 'قد لا تظهر علامات المرض على الأطفال الذين يعانون من ارتفاع في درجة الحرارة نسبيًا أو يتصرفون بالمرض. يعتمد علاج الحمى على درجة الانزعاج. إذا كان طفلك لا يهدأ أو لا يهدأ ، فقد تساعد استراتيجيات الرعاية المنزلية هذه :ـ',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Encourage your child to drink fluids.'
                              : 'شجع طفلك على شرب السوائل',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Dress your child in light clothes.'
                              : 'ألبس طفلك ملابس خفيفة',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Use a light blanket if your child gets the chills until they pass.'
                              : 'استخدم بطانية خفيفة إذا أصيب طفلك بقشعريرة حتى يمر',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Do not give aspirin to children or teenagers.'
                              : 'لا تعطي الأسبرين للأطفال أو المراهقين',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Do not give an infant any kind of pain reliever until the doctor has been contacted and the child\'s condition evaluated.'
                              : 'لا تعطي الرضيع أي نوع من مسكنات الآلام حتى يتم الاتصال بالطبيب وتقييم حالة الطفل',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
