import 'package:Health_Spot/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:sizer/sizer.dart';

class BleedingScreen extends StatefulWidget {
  const BleedingScreen({Key? key}) : super(key: key);

  @override
  State<BleedingScreen> createState() => _BleedingScreenState();
}

class _BleedingScreenState extends State<BleedingScreen> {
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
          arabic == false ? 'Bleeding' : 'نزيف',
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
                arabic == false ? 'Bleeding' : 'نزيف',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColorDark,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Column(children: <Widget>[
                SizedBox(
                  height: 1.h,
                ),
                SizedBox(
                  width: 90.w,
                  child: Column(
                    crossAxisAlignment: arabic == false
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.end,
                    children: [
                      Text(
                        arabic == false
                            ? 'Symptoms of these injuries are difficulty breathing, loss of consciousness, and impaired function which is controlled by that part, in the form of loss of sensation or paralysis.'
                            : 'وتتمثل أعراض هذه الإصابات في صعوبة التنفس ، وفقدان الوعي ، وضعف الوظيفة التي يتحكم بها هذا الجزء ، على شكل فقدان للإحساس أو شلل.',
                        textAlign:
                            arabic == true ? TextAlign.right : TextAlign.left,
                        style: TextStyle(
                          fontSize: 13.sp
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false ? 'Advices' : 'نصائح',
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
                      "assets/images/Bleeding steps.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  //assets/images/Bleeding steps.jpg
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    width: 90.w,
                    child: Column(
                      crossAxisAlignment: arabic == false
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        Text(
                          arabic == false
                              ? '• Do not move the injured person, especially his head, neck and back.'
                              : ' عدم تحريك المصاب وخاصة رأسه ورقبته وظهره .',
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
                              ? '• Try to control the bleeding.'
                              : ' حاول السيطرة على النزيف .',
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
                              ? '• Maintaining his normal body temperature.'
                              : 'المحافظة على درجة حرارة جسمه الطبيعية .',
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
                              ? '• Do not give the injured person any tea by mouth.'
                              : 'لا تعطي المصاب أي شاي عن طريق الفم .',
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
                              ? '• Do not attempt to stop the bleeding.'
                              : 'لا تحاول وقف النزيف .',
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
                              ? '• Have the casualty take a sitting position with his head tilted slightly forward.'
                              : 'اجعل المصاب يتخذ وضعية الجلوس مع إمالة رأسه للأمام قليلاً .',
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
                              ? '• Press on his nostrils for five minutes, and if the bleeding does not stop, then let it be for a while Ten minutes.'
                              : 'اضغطي على فتحتي أنفه لمدة خمس دقائق ، وإذا لم يتوقف النزيف فاتركيه لمدة عشر دقائق .',
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
                              ? '• If the bleeding continues, call an ambulance.'
                              : 'إذا استمر النزيف ، اتصل بسيارة إسعاف .',
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
                              ? '• Do not try to put pressure on his head, neck or back.'
                              : 'لا تحاول الضغط على رأسه أو رقبته أو ظهره .',
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
                              ? '• Do not wear any nasal spray.'
                              : 'لا تضع أي بخاخ للأنف .',
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
                              : 'اتصل بالإسعاف .',
                          textAlign:
                          arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(
                              fontSize: 13.sp
                          ),
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
