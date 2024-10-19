import 'package:Health_Spot/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:sizer/sizer.dart';

class SprainsScreen extends StatefulWidget {
  const SprainsScreen({Key? key}) : super(key: key);

  @override
  State<SprainsScreen> createState() => _SprainsScreenState();
}

class _SprainsScreenState extends State<SprainsScreen> {
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
          arabic == false ? 'Joint Sprain' : 'التواء المفصل',
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: arabic == false
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Text(
                arabic == false ? 'Joint Sprain :' : 'التواء المفصل',
                textAlign: arabic == false ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kColora,
                  fontFamily: AppFonts.kFontsCourgette,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                arabic == false
                    ? 'It is an injury to the joint ligament or muscle tendon close to the joint. What does a joint sprain look like?'
                    : 'إنها إصابة في الرباط المفصلي أو الوتر العضلي القريب من المفصل. كيف يبدو التواء المفصل؟',
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
                    ? '• Swelling of the area and soreness when touching.'
                    : 'تورم في المنطقة ووجع عند اللمس',
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
                    ? '• severe pain when moving the joint.'
                    : 'ألم شديد عند تحريك المفصل',
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
                    ? '• A change in the color of the skin over the joint.'
                    : 'تغير في لون الجلد فوق المفصل',
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
                    ? '• Place a pillow around the sprained joint, Tie firmly using a wide strap.'
                    : 'ضع وسادة حول المفصل الملتوي ، اربطها بإحكام باستخدام شريط عريض',
                textAlign:
                arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontSize: 13.sp
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/images/Joint sprain.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //assets/images/Joint sprain.jpg
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false ? 'What to do in cases of sprained joints?' : 'ماذا تفعل في حالات التواء المفاصل؟',
                textAlign: arabic == false ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kColora,
                  fontFamily: AppFonts.kFontsCourgette,
                ),
              ),

              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false
                    ? '• Place a pillow around the sprained joint, Tie firmly using a wide strap.'
                    : 'ضع وسادة حول المفصل الملتوي ، اربطها بإحكام باستخدام شريط عريض',
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
                    ? '• Fix the joints with a wide bandage and a pillow, as shown in the pictures attached on this page.'
                    : 'ثبت المفاصل بضمادة عريضة ووسادة كما هو موضح بالصور المرفقة بهذه الصفحة',
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
                    ? '• Elevate injured limbs above body level.'
                    : 'ارفع الأطراف المصابة فوق مستوى الجسم',
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
                    ? '• Call an ambulance.'
                    : 'اتصل بالإسعاف',
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
